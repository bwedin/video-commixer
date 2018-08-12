#include <iostream> // for standard I/O
#include <fstream> // for reading in file
#include <string>   // for strings
#include <iomanip>  // for controlling float print precision
#include <sstream>  // string to number conversion
#include <map> // for maps

#include <opencv2/core/core.hpp>        // Basic OpenCV structures
#include <opencv2/video/video.hpp> // Reading video files
#include <opencv2/imgproc/imgproc.hpp> // Image processing filters
#include <opencv2/highgui/highgui.hpp>  // OpenCV window I/O


using namespace std;
using namespace cv;

static void help()
{
    cout
        << "------" << endl
        << "This program is written for creating live visual performance, "
        << "using up to 8 different videos as input by the user for blending,"
        << " as well as 3 other videos used for masking. These files"
        << " must be named in a text file. All videos and text files should be"
        << " specified relative to the current directory (see"
        << " \"filenames_video.txt\" for example)."
        << endl
        << endl
        << "Usage:"                << endl
        << "./videocommixer video_textfile.txt mask_textfile.txt" << endl
        << "------" << endl
        << endl;
}

// Takes two input images, then interleaves or "blends" them together using
// different templates as masks, and returns the result. Also applies
// erosion, dilation, and Canny line detection algorithms.
class ImageBlender
{
    //Mat objects for blending, applying filters, and returning a single image
    Mat mask_current_flipped, mask_current, template_current;
    Mat mask_template_columns, mask_template_allA;
    Mat mask_template_face, mask_template_image;
    Mat output_1, output_2, image_1, image_2, image_blended;
    Mat image_blended_grayscale, image_detected_edges;
    Mat erosion_kernel, dilation_kernel;
    int nRows;
    int nCols;
    int erosion_kernel_size, dilation_kernel_size;
    int canny_threshold;

    // Loads default masks used for blending by loading from "masks" folder
    void createMasks()
    {
      mask_template_allA =
        imread("default_masks/allA.png", CV_LOAD_IMAGE_GRAYSCALE);
      mask_template_columns =
        imread("default_masks/columns.png", CV_LOAD_IMAGE_GRAYSCALE);
      mask_template_face =
        imread("default_masks/dress.png", CV_LOAD_IMAGE_GRAYSCALE);


    }


public:
    ImageBlender(Mat& image_source_1, Mat& image_source_2)
    {
      image_1 = image_source_1; // Images used for blending
      image_2 = image_source_2;
      erosion_kernel_size = 0; // All filters' default is 0
      dilation_kernel_size = 0;
      canny_threshold = 0;
      nRows = image_1.rows;
      nCols = image_2.cols;
      output_1 = Mat::zeros(image_1.size(), CV_8UC3);
      output_1 = Mat::zeros(image_2.size(), CV_8UC3);
      mask_current = Mat::zeros(nRows, nCols, CV_8UC1);
      mask_current_flipped = Mat::zeros(mask_current.size(), CV_8UC1);
      createMasks();
      setMaskTemplate(1); // Default mask is 1 ("All A")
    }

    void setBothImages(Mat& image_source_1, Mat& image_source_2)
      {
        image_1 =  image_source_1;
        image_2 =  image_source_2;
      }

    // Changes template_current, mask_current, and mask_current flipped
    // in order to determine how images are blended
    void setMaskTemplate(int mask_type)
    {
      switch(mask_type)
      {
      case 1:
        template_current = mask_template_allA;
        break;
      case 2:
        template_current = mask_template_columns;
        break;
      case 3:
        template_current = mask_template_face;
        break;
      case 4:
        template_current = mask_template_image;
        break;
      }


      // mask_current copies all near-white pixels in the template as white
      // to display pixels from image_1, mask_current_flipped copies all
      // near-black pixels in the template as white in order to display
      // pixels from image_2. Gray pixels (60-180) are ignored.
      mask_current = mask_current.setTo(0);
      mask_current_flipped = mask_current_flipped.setTo(0);
      uchar* pointer_mask_template;
      uchar* pointer_mask_current;
      uchar* pointer_mask_flipped;

      // Iterate over all pixels in template_current
      for(int i = 0; i < nRows; ++i)
      {
          pointer_mask_template = template_current.ptr<uchar>(i);
          pointer_mask_current = mask_current.ptr<uchar>(i);
          pointer_mask_flipped = mask_current_flipped.ptr<uchar>(i);
          for (int j = 0; j < nCols; ++j)
          {
            // Any pixels that are near-white in template_current correspond
            // to displaying the image in image_1
            if (pointer_mask_template[j]>180)
            {
              pointer_mask_current[j] = 255;
            }
            // Any pixels that are near-black in template_current correspond
            // to displaying the image in image_2
            else if (pointer_mask_template[j]<60)
            {
              pointer_mask_flipped[j] = 255;
            }
          }
      }

    }

    // Uses input_image to create new masks used by ImageBlender
    void setImageMask(Mat& input_mask)
    {
      cvtColor(input_mask,mask_template_image,CV_BGR2GRAY);
      setMaskTemplate(4);
    }

    //Blends image_1 and image_2 by the pattern determined by template_current
    void blendImages()
    {

      // Pixels from image_x are copied to output_x, masked by mask_current
      output_1 = output_1.setTo(0);
      output_2 = output_2.setTo(0);
      image_1.copyTo(output_1, mask_current);
      image_2.copyTo(output_2, mask_current_flipped);
      addWeighted( output_1, 1.0, output_2, 1.0, 0.0, image_blended);
    }

    // Updates the cross erosion pattern used in applyFilters
    void updateErosionKernel(int kernel_size)
    {
      erosion_kernel_size = kernel_size;
      erosion_kernel = getStructuringElement(MORPH_CROSS,
                         Size( 2*erosion_kernel_size+1,
                           2*erosion_kernel_size+1 ),
                         Point( erosion_kernel_size, erosion_kernel_size));
    }

    // Updates the cross dilation pattern used in applyFilters
    void updateDilationKernel(int kernel_size)
    {
      dilation_kernel_size = kernel_size;
      dilation_kernel = getStructuringElement(MORPH_CROSS,
                         Size( 2*dilation_kernel_size+1,
                           2*dilation_kernel_size+1 ),
                         Point( dilation_kernel_size, dilation_kernel_size));
    }

    // Updates the Canny threshold used in applyCannyThreshold
    void updateCannyThreshold(int input_threshold)
    {
        canny_threshold = input_threshold;
    }

    // Uses Canny line detection to create
    // a colored line version of image_blended
    void applyCannyThreshold()
    {
        /// Reduce noise with a kernel 3x3
        cvtColor(image_blended, image_blended_grayscale, COLOR_BGR2GRAY );
        blur(image_blended_grayscale, image_detected_edges, Size(3,3) );
        /// Canny detector
        Canny( image_detected_edges, image_detected_edges,
          canny_threshold, canny_threshold*3, 3);

        Mat image_edges;
        /// Using Canny's output as a mask, saves result to image_blended
        image_blended.copyTo(image_edges, image_detected_edges);
        image_blended = image_edges;

    }

    // Applies erosion, dilation, and
    // Canny line detection (in order) to image_blended
    void applyFilters()
    {
      if (erosion_kernel_size>0)
        erode(image_blended, image_blended, erosion_kernel);

      if (dilation_kernel_size>0)
        dilate(image_blended, image_blended, dilation_kernel);

      if (canny_threshold>0)
        applyCannyThreshold();
    }

    Mat& getImage() {
      return image_blended; }
};

// Takes up to 8 input videos for blending, as well as a dyanmic "video mask",
// then takes individual frames and "blends" them together using an instance
// of the ImageBlender class, and returns a final Mat image. Reacts to
// keystrokes/character input to change the frames and masks that are used.
class VideoBlender
{
  private:
    VideoCapture video_a, video_b, video_mask_current;
    Mat frame_a, frame_b, frame_current, frame_mask;
    VideoCapture video_array_a[8];
    VideoCapture video_array_b[8];
    VideoCapture video_mask_array[1];
    ImageBlender blender;
    map<char,string> lookup_keypress;
    bool dynamic_mask;

    //Creates mapping of keystrokes to change the video source
    void createKeyMap()
    {
      lookup_keypress['q'] = "A0";
      lookup_keypress['w'] = "A1";
      lookup_keypress['e'] = "A2";
      lookup_keypress['r'] = "A3";
      lookup_keypress['a'] = "A4";
      lookup_keypress['s'] = "A5";
      lookup_keypress['d'] = "A6";
      lookup_keypress['f'] = "A7";
      lookup_keypress['y'] = "B0";
      lookup_keypress['u'] = "B1";
      lookup_keypress['i'] = "B2";
      lookup_keypress['o'] = "B3";
      lookup_keypress['h'] = "B4";
      lookup_keypress['j'] = "B5";
      lookup_keypress['k'] = "B6";
      lookup_keypress['l'] = "B7";
      lookup_keypress['1'] = "X";
      lookup_keypress['2'] = "X";
      lookup_keypress['3'] = "X";
      lookup_keypress['4'] = "X";
      lookup_keypress['z'] = "X";
      lookup_keypress['x'] = "X";
      lookup_keypress['c'] = "X";
      lookup_keypress['v'] = "X";
      lookup_keypress['n'] = "X";
      lookup_keypress['b'] = "X";
    }

  public:
    VideoBlender(string video_array[], string mask_array[]) :
    blender(frame_a,frame_b)
    {
      // Loading input videos given by text file
      for (int i = 0; i < 8; i++)
      {
        cout << "Loading: " << video_array[i] << endl;
        video_array_a[i] = VideoCapture(video_array[i]);
        video_array_b[i] = VideoCapture(video_array[i]);
      }
      // Loading mask videos given by text file
      for (int k = 0; k < 1; k++)
      {
        cout << "Loading: " << mask_array[k] << endl;
        video_mask_array[k] = VideoCapture(mask_array[k]);
      }
      createKeyMap();
      dynamic_mask = false; // Initial mask in ImageBlender is static ("All A")
      video_a = video_array_a[7];
      video_b = video_array_b[7];
      video_a.set(CV_CAP_PROP_POS_MSEC, 10000);
      video_b.set(CV_CAP_PROP_POS_MSEC, 10000);
      video_a >> frame_a;
      video_b >> frame_b;
      blender = ImageBlender(frame_a,frame_b);
    }

    // Changes video_a or video_b and resets time of video
    void setVideoSource(char select_a_or_b, char select_0to7)
    {
      if (select_a_or_b=='A')
      {
        video_a = video_array_a[select_0to7];
        video_a.set(CV_CAP_PROP_POS_MSEC, 10000);
      }
      else
      {
        video_b = video_array_b[select_0to7];
        video_b.set(CV_CAP_PROP_POS_MSEC, 10000);
      }
    }

    void setVideoMask(VideoCapture input_video)
    {
      video_mask_current = input_video;
    }

    // Changes mask (or type of mask) used by ImageBlender
    void setMask(int mask_int)
    {
      if(mask_int==4)
      {
        dynamic_mask = true; // mask used by ImageBlender now changes
        setVideoMask(video_mask_array[0]);
        video_mask_current.set(CV_CAP_PROP_POS_MSEC, 0);
        video_mask_current >> frame_mask; // first frame of video_mask
        blender.setImageMask(frame_mask); // set to mask used by ImageBlender
      }
      else dynamic_mask = false; // no longer a video mask, "static" mask
      blender.setMaskTemplate(mask_int);

    }

    // Takes single character as argument, changes video source or filters
    // used by ImageBlender
    void reactKeypress(char c)
    {
      string lookup_value = lookup_keypress[c];
      if (lookup_value == "") return;
      // Uses lookup table to create function call to setVideoSource
      if (lookup_value.length()==2)
      {
        char video_select_char = lookup_value[0];
        int video_select_num = lookup_value[1] - '0';
        setVideoSource(video_select_char,video_select_num);
        return;
      }
      switch(c)
      {
      case '1':
        setMask(1);
        break;
      case '2':
        setMask(2);
        break;
      case '3':
        setMask(3);
        break;
      case '4':
        setMask(4);
        break;
      case 'z':
        blender.updateErosionKernel(17);
        break;
      case 'x':
        blender.updateErosionKernel(0);
        break;
      case 'c':
        blender.updateDilationKernel(17);
        break;
      case 'v':
        blender.updateDilationKernel(0);
        break;
      case 'b':
        blender.updateCannyThreshold(50);
        break;
      case 'n':
        blender.updateCannyThreshold(0);
        break;
      }
    }

    // Uses new frames from video sources (and optionally video mask),
    // and passes them to ImageBlender to create a new image.
    Mat& getImage() {
      video_a >> frame_a; // new frame from video source
      video_b >> frame_b;
      //video_a >> frame_a; // new frame from video source
      //video_b >> frame_b;



      if (frame_a.empty())  // Loops back video if at end
      {
        video_a.set(CV_CAP_PROP_POS_MSEC, 0);
        video_a >> frame_a;
      }
      if (frame_b.empty())
      {
        video_b.set(CV_CAP_PROP_POS_MSEC, 0);
        video_b >> frame_b;
      }

      if (dynamic_mask)
      {
        video_mask_current >> frame_mask; // new mask from video mask source

        if (frame_mask.empty()) // Loops back video if at end
        {
          video_mask_current.set(CV_CAP_PROP_POS_MSEC, 0);
          video_mask_current >> frame_mask;
        }
        blender.setImageMask(frame_mask); // updates masked used by blender
      }

      blender.setBothImages(frame_a,frame_b);
      blender.blendImages();
      blender.applyFilters();
      frame_current = blender.getImage();
      return frame_current; }

    int getCols(){
      return frame_a.cols;
    }

    int getRows(){
      return frame_a.rows;
    }

    double getFourCc(){
      return video_a.get(CV_CAP_PROP_FOURCC);
    }
};


int main(int argc, char *argv[])
{
    help();

    if (argc!=3) {
      cout << "Incorrect number of arguments. Please try again." << endl;
      return 0;
    }

    string line;

    //Creates array 8 of video filenames from text file for video sources
    string list_file = argv[1];
    ifstream input(list_file);
    string video_filenames[8];
    int i = 0;
    for (i = 0; i < 8; i++)
    {
      getline(input, line);
      video_filenames[i] = line;
    }

    //Creates array of video filenames from text file for masks
    list_file = argv[2];
    input.close();
    input.clear();
    input.open(list_file);
    string mask_filenames[1];
    for (i = 0; i < 1; i++)
    {
      getline(input, line);
      mask_filenames[i] = line;
    }


    //Create video blender and display window
    VideoBlender videoBlender(video_filenames, mask_filenames);
    const char* WIN_RF = "Blended";
    namedWindow(WIN_RF, CV_WINDOW_AUTOSIZE);

    //Main loop, updatoing frame_blended and displaying it
    Mat frame_blended;

    bool write_video = false;
    string write_video_input = "";
    cout << "Would you like to write video (\"yes\" or \"no\")? "
         << "Video will be stored as \"output_video\" in the current "
         << "directory." << endl;
    cin >> write_video_input;
    while(write_video_input.compare("yes")!=0 &&
      write_video_input.compare("no")!=0)
    {
    cout    << "Sorry, I didn't understand your answer. "
            << "Would you like to write video (\"yes\" or \"no\")? "
            << "Video will be stored as \"output_video\" in the current "
            << "directory." << endl;
    cin >> write_video_input;
    }
    VideoWriter outputVideo;
    if(write_video_input.compare("yes")==0) {
      write_video = true;
      outputVideo.open("output_video",
        videoBlender.getFourCc(),
        15,
        Size(videoBlender.getCols(),videoBlender.getRows()), false);
    }

    for(;;)
    {
      char c = (char)waitKey(50);
      int c_int = (int)c;
      if (c == 27) break;
      else if (c_int==-1) ;
      else
      {
        videoBlender.reactKeypress(c);
      }
      frame_blended = videoBlender.getImage();
      imshow(WIN_RF, frame_blended);
      if (write_video)
        outputVideo << frame_blended;

    }



    return 0;
}
