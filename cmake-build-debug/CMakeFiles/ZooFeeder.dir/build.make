# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jake/ZooFeeder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jake/ZooFeeder/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ZooFeeder.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ZooFeeder.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ZooFeeder.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ZooFeeder.dir/flags.make

CMakeFiles/ZooFeeder.dir/main.cpp.o: CMakeFiles/ZooFeeder.dir/flags.make
CMakeFiles/ZooFeeder.dir/main.cpp.o: /home/jake/ZooFeeder/main.cpp
CMakeFiles/ZooFeeder.dir/main.cpp.o: CMakeFiles/ZooFeeder.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jake/ZooFeeder/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ZooFeeder.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ZooFeeder.dir/main.cpp.o -MF CMakeFiles/ZooFeeder.dir/main.cpp.o.d -o CMakeFiles/ZooFeeder.dir/main.cpp.o -c /home/jake/ZooFeeder/main.cpp

CMakeFiles/ZooFeeder.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ZooFeeder.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jake/ZooFeeder/main.cpp > CMakeFiles/ZooFeeder.dir/main.cpp.i

CMakeFiles/ZooFeeder.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ZooFeeder.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jake/ZooFeeder/main.cpp -o CMakeFiles/ZooFeeder.dir/main.cpp.s

# Object files for target ZooFeeder
ZooFeeder_OBJECTS = \
"CMakeFiles/ZooFeeder.dir/main.cpp.o"

# External object files for target ZooFeeder
ZooFeeder_EXTERNAL_OBJECTS =

ZooFeeder: CMakeFiles/ZooFeeder.dir/main.cpp.o
ZooFeeder: CMakeFiles/ZooFeeder.dir/build.make
ZooFeeder: CMakeFiles/ZooFeeder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jake/ZooFeeder/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ZooFeeder"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ZooFeeder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ZooFeeder.dir/build: ZooFeeder
.PHONY : CMakeFiles/ZooFeeder.dir/build

CMakeFiles/ZooFeeder.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ZooFeeder.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ZooFeeder.dir/clean

CMakeFiles/ZooFeeder.dir/depend:
	cd /home/jake/ZooFeeder/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jake/ZooFeeder /home/jake/ZooFeeder /home/jake/ZooFeeder/cmake-build-debug /home/jake/ZooFeeder/cmake-build-debug /home/jake/ZooFeeder/cmake-build-debug/CMakeFiles/ZooFeeder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ZooFeeder.dir/depend
