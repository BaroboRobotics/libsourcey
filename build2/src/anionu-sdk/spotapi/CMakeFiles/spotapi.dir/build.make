# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deploy/src/libsourcey

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deploy/src/libsourcey/build

# Include any dependencies generated for this target.
include src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/depend.make

# Include the progress variables for this target.
include src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/progress.make

# Include the compile flags for this target's objects.
include src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/flags.make

# Object files for target spotapi
spotapi_OBJECTS =

# External object files for target spotapi
spotapi_EXTERNAL_OBJECTS =

src/anionu-sdk/spotapi/libscy_spotapi.a: src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/build.make
src/anionu-sdk/spotapi/libscy_spotapi.a: src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libscy_spotapi.a"
	cd /home/deploy/src/libsourcey/build/src/anionu-sdk/spotapi && $(CMAKE_COMMAND) -P CMakeFiles/spotapi.dir/cmake_clean_target.cmake
	cd /home/deploy/src/libsourcey/build/src/anionu-sdk/spotapi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spotapi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/build: src/anionu-sdk/spotapi/libscy_spotapi.a
.PHONY : src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/build

src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/requires:
.PHONY : src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/requires

src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/clean:
	cd /home/deploy/src/libsourcey/build/src/anionu-sdk/spotapi && $(CMAKE_COMMAND) -P CMakeFiles/spotapi.dir/cmake_clean.cmake
.PHONY : src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/clean

src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/depend:
	cd /home/deploy/src/libsourcey/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deploy/src/libsourcey /home/deploy/src/libsourcey/src/anionu-sdk/spotapi /home/deploy/src/libsourcey/build /home/deploy/src/libsourcey/build/src/anionu-sdk/spotapi /home/deploy/src/libsourcey/build/src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/anionu-sdk/spotapi/CMakeFiles/spotapi.dir/depend
