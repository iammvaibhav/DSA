# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vaibhav/CLionProjects/DSA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vaibhav/CLionProjects/DSA/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/QUICKSORT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/QUICKSORT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/QUICKSORT.dir/flags.make

CMakeFiles/QUICKSORT.dir/QuickSort.c.o: CMakeFiles/QUICKSORT.dir/flags.make
CMakeFiles/QUICKSORT.dir/QuickSort.c.o: ../QuickSort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaibhav/CLionProjects/DSA/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/QUICKSORT.dir/QuickSort.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/QUICKSORT.dir/QuickSort.c.o   -c /home/vaibhav/CLionProjects/DSA/QuickSort.c

CMakeFiles/QUICKSORT.dir/QuickSort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QUICKSORT.dir/QuickSort.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vaibhav/CLionProjects/DSA/QuickSort.c > CMakeFiles/QUICKSORT.dir/QuickSort.c.i

CMakeFiles/QUICKSORT.dir/QuickSort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QUICKSORT.dir/QuickSort.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vaibhav/CLionProjects/DSA/QuickSort.c -o CMakeFiles/QUICKSORT.dir/QuickSort.c.s

CMakeFiles/QUICKSORT.dir/QuickSort.c.o.requires:

.PHONY : CMakeFiles/QUICKSORT.dir/QuickSort.c.o.requires

CMakeFiles/QUICKSORT.dir/QuickSort.c.o.provides: CMakeFiles/QUICKSORT.dir/QuickSort.c.o.requires
	$(MAKE) -f CMakeFiles/QUICKSORT.dir/build.make CMakeFiles/QUICKSORT.dir/QuickSort.c.o.provides.build
.PHONY : CMakeFiles/QUICKSORT.dir/QuickSort.c.o.provides

CMakeFiles/QUICKSORT.dir/QuickSort.c.o.provides.build: CMakeFiles/QUICKSORT.dir/QuickSort.c.o


# Object files for target QUICKSORT
QUICKSORT_OBJECTS = \
"CMakeFiles/QUICKSORT.dir/QuickSort.c.o"

# External object files for target QUICKSORT
QUICKSORT_EXTERNAL_OBJECTS =

QUICKSORT: CMakeFiles/QUICKSORT.dir/QuickSort.c.o
QUICKSORT: CMakeFiles/QUICKSORT.dir/build.make
QUICKSORT: CMakeFiles/QUICKSORT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vaibhav/CLionProjects/DSA/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable QUICKSORT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/QUICKSORT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/QUICKSORT.dir/build: QUICKSORT

.PHONY : CMakeFiles/QUICKSORT.dir/build

CMakeFiles/QUICKSORT.dir/requires: CMakeFiles/QUICKSORT.dir/QuickSort.c.o.requires

.PHONY : CMakeFiles/QUICKSORT.dir/requires

CMakeFiles/QUICKSORT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/QUICKSORT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/QUICKSORT.dir/clean

CMakeFiles/QUICKSORT.dir/depend:
	cd /home/vaibhav/CLionProjects/DSA/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vaibhav/CLionProjects/DSA /home/vaibhav/CLionProjects/DSA /home/vaibhav/CLionProjects/DSA/cmake-build-debug /home/vaibhav/CLionProjects/DSA/cmake-build-debug /home/vaibhav/CLionProjects/DSA/cmake-build-debug/CMakeFiles/QUICKSORT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/QUICKSORT.dir/depend
