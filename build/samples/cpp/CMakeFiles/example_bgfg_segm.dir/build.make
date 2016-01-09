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
CMAKE_SOURCE_DIR = /Users/benwedin/opencv-3.0.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/benwedin/opencv-3.0.0/build

# Include any dependencies generated for this target.
include samples/cpp/CMakeFiles/example_bgfg_segm.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_bgfg_segm.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_bgfg_segm.dir/flags.make

samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o: samples/cpp/CMakeFiles/example_bgfg_segm.dir/flags.make
samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o: ../samples/cpp/bgfg_segm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/benwedin/opencv-3.0.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o -c /Users/benwedin/opencv-3.0.0/samples/cpp/bgfg_segm.cpp

samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.i"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benwedin/opencv-3.0.0/samples/cpp/bgfg_segm.cpp > CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.i

samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.s"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benwedin/opencv-3.0.0/samples/cpp/bgfg_segm.cpp -o CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.s

samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.requires:

.PHONY : samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.requires

samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.provides: samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_bgfg_segm.dir/build.make samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.provides

samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.provides.build: samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o


# Object files for target example_bgfg_segm
example_bgfg_segm_OBJECTS = \
"CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o"

# External object files for target example_bgfg_segm
example_bgfg_segm_EXTERNAL_OBJECTS =

bin/cpp-example-bgfg_segm: samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o
bin/cpp-example-bgfg_segm: samples/cpp/CMakeFiles/example_bgfg_segm.dir/build.make
bin/cpp-example-bgfg_segm: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-example-bgfg_segm: lib/libopencv_stitching.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_videostab.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_shape.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_objdetect.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_photo.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_calib3d.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_features2d.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_flann.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_highgui.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_videoio.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_imgcodecs.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_ml.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_video.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_imgproc.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_core.3.0.0.dylib
bin/cpp-example-bgfg_segm: lib/libopencv_hal.a
bin/cpp-example-bgfg_segm: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-example-bgfg_segm: samples/cpp/CMakeFiles/example_bgfg_segm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/benwedin/opencv-3.0.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cpp-example-bgfg_segm"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_bgfg_segm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_bgfg_segm.dir/build: bin/cpp-example-bgfg_segm

.PHONY : samples/cpp/CMakeFiles/example_bgfg_segm.dir/build

samples/cpp/CMakeFiles/example_bgfg_segm.dir/requires: samples/cpp/CMakeFiles/example_bgfg_segm.dir/bgfg_segm.cpp.o.requires

.PHONY : samples/cpp/CMakeFiles/example_bgfg_segm.dir/requires

samples/cpp/CMakeFiles/example_bgfg_segm.dir/clean:
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_bgfg_segm.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_bgfg_segm.dir/clean

samples/cpp/CMakeFiles/example_bgfg_segm.dir/depend:
	cd /Users/benwedin/opencv-3.0.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benwedin/opencv-3.0.0 /Users/benwedin/opencv-3.0.0/samples/cpp /Users/benwedin/opencv-3.0.0/build /Users/benwedin/opencv-3.0.0/build/samples/cpp /Users/benwedin/opencv-3.0.0/build/samples/cpp/CMakeFiles/example_bgfg_segm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_bgfg_segm.dir/depend

