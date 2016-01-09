# Install script for directory: /Users/benwedin/opencv-3.0.0/modules/stitching

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
    "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_stitching.3.0.0.dylib"
    "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_stitching.3.0.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.3.0.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.3.0.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "lib/libopencv_stitching.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_calib3d.3.0.dylib" "lib/libopencv_calib3d.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_core.3.0.dylib" "lib/libopencv_core.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_features2d.3.0.dylib" "lib/libopencv_features2d.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_flann.3.0.dylib" "lib/libopencv_flann.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_highgui.3.0.dylib" "lib/libopencv_highgui.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgcodecs.3.0.dylib" "lib/libopencv_imgcodecs.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgproc.3.0.dylib" "lib/libopencv_imgproc.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_ml.3.0.dylib" "lib/libopencv_ml.3.0.dylib"
        -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_objdetect.3.0.dylib" "lib/libopencv_objdetect.3.0.dylib"
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_stitching.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "lib/libopencv_stitching.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_calib3d.3.0.dylib" "lib/libopencv_calib3d.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_core.3.0.dylib" "lib/libopencv_core.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_features2d.3.0.dylib" "lib/libopencv_features2d.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_flann.3.0.dylib" "lib/libopencv_flann.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_highgui.3.0.dylib" "lib/libopencv_highgui.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgcodecs.3.0.dylib" "lib/libopencv_imgcodecs.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_imgproc.3.0.dylib" "lib/libopencv_imgproc.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_ml.3.0.dylib" "lib/libopencv_ml.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_objdetect.3.0.dylib" "lib/libopencv_objdetect.3.0.dylib"
      -change "/Users/benwedin/opencv-3.0.0/build/lib/libopencv_videoio.3.0.dylib" "lib/libopencv_videoio.3.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_stitching.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/warpers.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/autocalib.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/blenders.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/camera.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/exposure_compensate.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/matchers.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/motion_estimators.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/seam_finders.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/timelapsers.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/util.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/util_inl.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/warpers.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/stitching/detail" TYPE FILE OPTIONAL FILES "/Users/benwedin/opencv-3.0.0/modules/stitching/include/opencv2/stitching/detail/warpers_inl.hpp")
endif()

