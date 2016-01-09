# Install script for directory: /Users/benwedin/opencv-3.0.0/modules/videostab

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_videostab.3.0.0.dylib"
    "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_videostab.3.0.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.3.0.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.3.0.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "lib/libopencv_videostab.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_calib3d.3.0.dylib" "lib/libopencv_calib3d.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_core.3.0.dylib" "lib/libopencv_core.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_features2d.3.0.dylib" "lib/libopencv_features2d.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_flann.3.0.dylib" "lib/libopencv_flann.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_highgui.3.0.dylib" "lib/libopencv_highgui.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgcodecs.3.0.dylib" "lib/libopencv_imgcodecs.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgproc.3.0.dylib" "lib/libopencv_imgproc.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_ml.3.0.dylib" "lib/libopencv_ml.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_photo.3.0.dylib" "lib/libopencv_photo.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_video.3.0.dylib" "lib/libopencv_video.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_videoio.3.0.dylib" "lib/libopencv_videoio.3.0.dylib"
        "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_videostab.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "lib/libopencv_videostab.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_calib3d.3.0.dylib" "lib/libopencv_calib3d.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_core.3.0.dylib" "lib/libopencv_core.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_features2d.3.0.dylib" "lib/libopencv_features2d.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_flann.3.0.dylib" "lib/libopencv_flann.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_highgui.3.0.dylib" "lib/libopencv_highgui.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgcodecs.3.0.dylib" "lib/libopencv_imgcodecs.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgproc.3.0.dylib" "lib/libopencv_imgproc.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_ml.3.0.dylib" "lib/libopencv_ml.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_photo.3.0.dylib" "lib/libopencv_photo.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_video.3.0.dylib" "lib/libopencv_video.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_videoio.3.0.dylib" "lib/libopencv_videoio.3.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_videostab.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/deblurring.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/fast_marching.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/fast_marching_inl.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/frame_source.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/global_motion.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/inpainting.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/log.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/motion_core.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/motion_stabilizing.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/optical_flow.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/outlier_rejection.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/ring_buffer.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/stabilizer.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/videostab" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/videostab/include/opencv2/videostab/wobble_suppression.hpp")
endif()

