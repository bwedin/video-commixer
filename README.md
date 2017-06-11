# video-commixer
Video processing software written using the C++ OpenCV Library. Allows for realtime video mixing, filtering, and writing.

Please install [CMake](https://cmake.org/) and [OpenCV](https://github.com/opencv/opencv) before using.

### Mac/UNIX Installation
If using cmake from command line:
1. Go to the downloaded 'opencv' folder, and run the following:
```
cmake .
make
```
2. Clone the video-commixer repository if you haven't already, and go to it.
3. In the video-commixer repository, run the following:
```
cmake .
make
```
4. You should be good to go if no errors occurred while making and you see a 'videocommixer' executable in your 'video-commixer' folder.

If using the CMake application:
1. 'Browse source...' to find the 'opencv' directory.
2. Configure and generate the build.
3. 'Browse source...' to find the 'video-commixer' directory.
4. Configure and generate the build.
5. You should be good to go if no errors occurred while making and you see a 'videocommixer' executable in your 'video-commixer' folder.



### Running an example
Once installed, you can run an example by entering:
````
./videocommixer filenames_video.txt filenames_masks.txt
````
from the video-commixer directory.
