# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build

# Include any dependencies generated for this target.
include CMakeFiles/programme_10.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/programme_10.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/programme_10.dir/flags.make

CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o: CMakeFiles/programme_10.dir/flags.make
CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o: ../programme_10/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o -c /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/programme_10/src/main.cpp

CMakeFiles/programme_10.dir/programme_10/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programme_10.dir/programme_10/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/programme_10/src/main.cpp > CMakeFiles/programme_10.dir/programme_10/src/main.cpp.i

CMakeFiles/programme_10.dir/programme_10/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programme_10.dir/programme_10/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/programme_10/src/main.cpp -o CMakeFiles/programme_10.dir/programme_10/src/main.cpp.s

CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.requires:

.PHONY : CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.requires

CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.provides: CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/programme_10.dir/build.make CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.provides

CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.provides.build: CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o


# Object files for target programme_10
programme_10_OBJECTS = \
"CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o"

# External object files for target programme_10
programme_10_EXTERNAL_OBJECTS =

programme_10: CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o
programme_10: CMakeFiles/programme_10.dir/build.make
programme_10: /usr/lib/x86_64-linux-gnu/libGLEW.so
programme_10: /usr/lib/x86_64-linux-gnu/libglut.so
programme_10: /usr/lib/x86_64-linux-gnu/libXmu.so
programme_10: /usr/lib/x86_64-linux-gnu/libXi.so
programme_10: /usr/lib/x86_64-linux-gnu/libGL.so
programme_10: /usr/lib/x86_64-linux-gnu/libGLU.so
programme_10: tools/libtools.a
programme_10: CMakeFiles/programme_10.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable programme_10"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/programme_10.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/programme_10.dir/build: programme_10

.PHONY : CMakeFiles/programme_10.dir/build

CMakeFiles/programme_10.dir/requires: CMakeFiles/programme_10.dir/programme_10/src/main.cpp.o.requires

.PHONY : CMakeFiles/programme_10.dir/requires

CMakeFiles/programme_10.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/programme_10.dir/cmake_clean.cmake
.PHONY : CMakeFiles/programme_10.dir/clean

CMakeFiles/programme_10.dir/depend:
	cd /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build /fs03/share/users/luc.anchling/home/Documents/TSI/Projet_TSI/build/CMakeFiles/programme_10.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/programme_10.dir/depend

