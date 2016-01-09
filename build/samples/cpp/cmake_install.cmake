# Install script for directory: /Users/benwedin/opencv-3.0.0/samples/cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/Users/benwedin/opencv-3.0.0/samples/cpp/3calibration.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/autofocus.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/bgfg_segm.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/calibration.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/camshiftdemo.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/cloning_demo.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/cloning_gui.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/connected_components.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/contours2.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/convexhull.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/cout_mat.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/create_mask.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/dbt_face_detection.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/delaunay2.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/demhist.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/detect_blob.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/detect_mser.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/dft.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/distrans.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/drawing.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/edge.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/em.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/facedetect.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/facial_features.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/fback.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/ffilldemo.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/filestorage.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/fitellipse.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/grabcut.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/houghcircles.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/houghlines.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/image.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/image_alignment.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/image_sequence.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/imagelist_creator.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/inpaint.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/intelperc_capture.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/kalman.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/kmeans.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/laplace.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/letter_recog.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/lkdemo.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/logistic_regression.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/lsd_lines.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/mask_tmpl.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/matchmethod_orb_akaze_brisk.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/minarea.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/morphology2.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/npr_demo.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/opencv_version.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/openni_capture.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/pca.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/phase_corr.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/points_classifier.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/polar_transforms.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/segment_objects.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/select3dobj.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/shape_example.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/smiledetect.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/squares.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/starter_imagelist.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/starter_video.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/stereo_calib.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/stereo_match.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/stitching.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/stitching_detailed.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/train_HOG.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/tree_engine.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/tvl1_optical_flow.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/ufacedetect.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/videostab.cpp"
    "/Users/benwedin/opencv-3.0.0/samples/cpp/watershed.cpp"
    )
endif()

