# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/kazim/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/kazim/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kazim/construct_ws/src/navigation2/nav2_theta_star_planner

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kazim/construct_ws/build/nav2_theta_star_planner

# Include any dependencies generated for this target.
include gtest/CMakeFiles/gtest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include gtest/CMakeFiles/gtest.dir/compiler_depend.make

# Include the progress variables for this target.
include gtest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include gtest/CMakeFiles/gtest.dir/flags.make

gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: gtest/CMakeFiles/gtest.dir/flags.make
gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: /opt/ros/humble/src/gtest_vendor/src/gtest-all.cc
gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: gtest/CMakeFiles/gtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kazim/construct_ws/build/nav2_theta_star_planner/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o -MF CMakeFiles/gtest.dir/src/gtest-all.cc.o.d -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /opt/ros/humble/src/gtest_vendor/src/gtest-all.cc

gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/ros/humble/src/gtest_vendor/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/ros/humble/src/gtest_vendor/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

gtest/libgtest.a: gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
gtest/libgtest.a: gtest/CMakeFiles/gtest.dir/build.make
gtest/libgtest.a: gtest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kazim/construct_ws/build/nav2_theta_star_planner/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest.a"
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtest/CMakeFiles/gtest.dir/build: gtest/libgtest.a
.PHONY : gtest/CMakeFiles/gtest.dir/build

gtest/CMakeFiles/gtest.dir/clean:
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : gtest/CMakeFiles/gtest.dir/clean

gtest/CMakeFiles/gtest.dir/depend:
	cd /home/kazim/construct_ws/build/nav2_theta_star_planner && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kazim/construct_ws/src/navigation2/nav2_theta_star_planner /opt/ros/humble/src/gtest_vendor /home/kazim/construct_ws/build/nav2_theta_star_planner /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest /home/kazim/construct_ws/build/nav2_theta_star_planner/gtest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtest/CMakeFiles/gtest.dir/depend

