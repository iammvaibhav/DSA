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
include CMakeFiles/GBFILE.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GBFILE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GBFILE.dir/flags.make

CMakeFiles/GBFILE.dir/gbfile.c.o: CMakeFiles/GBFILE.dir/flags.make
CMakeFiles/GBFILE.dir/gbfile.c.o: ../gbfile.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaibhav/CLionProjects/DSA/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/GBFILE.dir/gbfile.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/GBFILE.dir/gbfile.c.o   -c /home/vaibhav/CLionProjects/DSA/gbfile.c

CMakeFiles/GBFILE.dir/gbfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GBFILE.dir/gbfile.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vaibhav/CLionProjects/DSA/gbfile.c > CMakeFiles/GBFILE.dir/gbfile.c.i

CMakeFiles/GBFILE.dir/gbfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GBFILE.dir/gbfile.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vaibhav/CLionProjects/DSA/gbfile.c -o CMakeFiles/GBFILE.dir/gbfile.c.s

CMakeFiles/GBFILE.dir/gbfile.c.o.requires:

.PHONY : CMakeFiles/GBFILE.dir/gbfile.c.o.requires

CMakeFiles/GBFILE.dir/gbfile.c.o.provides: CMakeFiles/GBFILE.dir/gbfile.c.o.requires
	$(MAKE) -f CMakeFiles/GBFILE.dir/build.make CMakeFiles/GBFILE.dir/gbfile.c.o.provides.build
.PHONY : CMakeFiles/GBFILE.dir/gbfile.c.o.provides

CMakeFiles/GBFILE.dir/gbfile.c.o.provides.build: CMakeFiles/GBFILE.dir/gbfile.c.o


# Object files for target GBFILE
GBFILE_OBJECTS = \
"CMakeFiles/GBFILE.dir/gbfile.c.o"

# External object files for target GBFILE
GBFILE_EXTERNAL_OBJECTS =

GBFILE: CMakeFiles/GBFILE.dir/gbfile.c.o
GBFILE: CMakeFiles/GBFILE.dir/build.make
GBFILE: CMakeFiles/GBFILE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vaibhav/CLionProjects/DSA/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable GBFILE"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GBFILE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GBFILE.dir/build: GBFILE

.PHONY : CMakeFiles/GBFILE.dir/build

CMakeFiles/GBFILE.dir/requires: CMakeFiles/GBFILE.dir/gbfile.c.o.requires

.PHONY : CMakeFiles/GBFILE.dir/requires

CMakeFiles/GBFILE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GBFILE.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GBFILE.dir/clean

CMakeFiles/GBFILE.dir/depend:
	cd /home/vaibhav/CLionProjects/DSA/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vaibhav/CLionProjects/DSA /home/vaibhav/CLionProjects/DSA /home/vaibhav/CLionProjects/DSA/cmake-build-debug /home/vaibhav/CLionProjects/DSA/cmake-build-debug /home/vaibhav/CLionProjects/DSA/cmake-build-debug/CMakeFiles/GBFILE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GBFILE.dir/depend

