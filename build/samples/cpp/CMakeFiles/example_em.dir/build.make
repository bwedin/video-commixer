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
include samples/cpp/CMakeFiles/example_em.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_em.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_em.dir/flags.make

samples/cpp/CMakeFiles/example_em.dir/em.cpp.o: samples/cpp/CMakeFiles/example_em.dir/flags.make
samples/cpp/CMakeFiles/example_em.dir/em.cpp.o: ../samples/cpp/em.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/benwedin/opencv-3.0.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/cpp/CMakeFiles/example_em.dir/em.cpp.o"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_em.dir/em.cpp.o -c /Users/benwedin/opencv-3.0.0/samples/cpp/em.cpp

samples/cpp/CMakeFiles/example_em.dir/em.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_em.dir/em.cpp.i"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benwedin/opencv-3.0.0/samples/cpp/em.cpp > CMakeFiles/example_em.dir/em.cpp.i

samples/cpp/CMakeFiles/example_em.dir/em.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_em.dir/em.cpp.s"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benwedin/opencv-3.0.0/samples/cpp/em.cpp -o CMakeFiles/example_em.dir/em.cpp.s

samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.requires:

.PHONY : samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.requires

samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.provides: samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_em.dir/build.make samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.provides

samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.provides.build: samples/cpp/CMakeFiles/example_em.dir/em.cpp.o


# Object files for target example_em
example_em_OBJECTS = \
"CMakeFiles/example_em.dir/em.cpp.o"

# External object files for target example_em
example_em_EXTERNAL_OBJECTS =

bin/cpp-example-em: samples/cpp/CMakeFiles/example_em.dir/em.cpp.o
bin/cpp-example-em: samples/cpp/CMakeFiles/example_em.dir/build.make
bin/cpp-example-em: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-example-em: lib/libopencv_stitching.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_videostab.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_shape.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_objdetect.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_photo.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_calib3d.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_features2d.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_flann.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_highgui.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_videoio.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_imgcodecs.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_ml.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_video.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_imgproc.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_core.3.0.0.dylib
bin/cpp-example-em: lib/libopencv_hal.a
bin/cpp-example-em: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-example-em: samples/cpp/CMakeFiles/example_em.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/benwedin/opencv-3.0.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cpp-example-em"
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_em.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_em.dir/build: bin/cpp-example-em

.PHONY : samples/cpp/CMakeFiles/example_em.dir/build

samples/cpp/CMakeFiles/example_em.dir/requires: samples/cpp/CMakeFiles/example_em.dir/em.cpp.o.requires

.PHONY : samples/cpp/CMakeFiles/example_em.dir/requires

samples/cpp/CMakeFiles/example_em.dir/clean:
	cd /Users/benwedin/opencv-3.0.0/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_em.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_em.dir/clean

samples/cpp/CMakeFiles/example_em.dir/depend:
	cd /Users/benwedin/opencv-3.0.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benwedin/opencv-3.0.0 /Users/benwedin/opencv-3.0.0/samples/cpp /Users/benwedin/opencv-3.0.0/build /Users/benwedin/opencv-3.0.0/build/samples/cpp /Users/benwedin/opencv-3.0.0/build/samples/cpp/CMakeFiles/example_em.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_em.dir/depend

