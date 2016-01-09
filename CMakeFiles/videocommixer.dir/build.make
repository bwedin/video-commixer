# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/benwedin/video-commixer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/benwedin/video-commixer

# Include any dependencies generated for this target.
include CMakeFiles/videocommixer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/videocommixer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/videocommixer.dir/flags.make

CMakeFiles/videocommixer.dir/videocommixer.cpp.o: CMakeFiles/videocommixer.dir/flags.make
CMakeFiles/videocommixer.dir/videocommixer.cpp.o: videocommixer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/benwedin/video-commixer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/videocommixer.dir/videocommixer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/videocommixer.dir/videocommixer.cpp.o -c /Users/benwedin/video-commixer/videocommixer.cpp

CMakeFiles/videocommixer.dir/videocommixer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/videocommixer.dir/videocommixer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benwedin/video-commixer/videocommixer.cpp > CMakeFiles/videocommixer.dir/videocommixer.cpp.i

CMakeFiles/videocommixer.dir/videocommixer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/videocommixer.dir/videocommixer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benwedin/video-commixer/videocommixer.cpp -o CMakeFiles/videocommixer.dir/videocommixer.cpp.s

CMakeFiles/videocommixer.dir/videocommixer.cpp.o.requires:

.PHONY : CMakeFiles/videocommixer.dir/videocommixer.cpp.o.requires

CMakeFiles/videocommixer.dir/videocommixer.cpp.o.provides: CMakeFiles/videocommixer.dir/videocommixer.cpp.o.requires
	$(MAKE) -f CMakeFiles/videocommixer.dir/build.make CMakeFiles/videocommixer.dir/videocommixer.cpp.o.provides.build
.PHONY : CMakeFiles/videocommixer.dir/videocommixer.cpp.o.provides

CMakeFiles/videocommixer.dir/videocommixer.cpp.o.provides.build: CMakeFiles/videocommixer.dir/videocommixer.cpp.o


# Object files for target videocommixer
videocommixer_OBJECTS = \
"CMakeFiles/videocommixer.dir/videocommixer.cpp.o"

# External object files for target videocommixer
videocommixer_EXTERNAL_OBJECTS =

videocommixer: CMakeFiles/videocommixer.dir/videocommixer.cpp.o
videocommixer: CMakeFiles/videocommixer.dir/build.make
videocommixer: /usr/local/lib/libopencv_videostab.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_superres.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_stitching.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_shape.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_photo.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_hal.a
videocommixer: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_features2d.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_ml.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_highgui.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_videoio.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_flann.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_video.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_core.3.0.0.dylib
videocommixer: /usr/local/lib/libopencv_hal.a
videocommixer: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
videocommixer: CMakeFiles/videocommixer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/benwedin/video-commixer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable videocommixer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/videocommixer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/videocommixer.dir/build: videocommixer

.PHONY : CMakeFiles/videocommixer.dir/build

CMakeFiles/videocommixer.dir/requires: CMakeFiles/videocommixer.dir/videocommixer.cpp.o.requires

.PHONY : CMakeFiles/videocommixer.dir/requires

CMakeFiles/videocommixer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/videocommixer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/videocommixer.dir/clean

CMakeFiles/videocommixer.dir/depend:
	cd /Users/benwedin/video-commixer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benwedin/video-commixer /Users/benwedin/video-commixer /Users/benwedin/video-commixer /Users/benwedin/video-commixer /Users/benwedin/video-commixer/CMakeFiles/videocommixer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/videocommixer.dir/depend

