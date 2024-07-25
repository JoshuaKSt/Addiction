# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build

# Include any dependencies generated for this target.
include src/formats/CMakeFiles/freefracformat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/formats/CMakeFiles/freefracformat.dir/compiler_depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/freefracformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/freefracformat.dir/flags.make

src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.o: src/formats/CMakeFiles/freefracformat.dir/flags.make
src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.o: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/freefracformat.cpp
src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.o: src/formats/CMakeFiles/freefracformat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.o"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.o -MF CMakeFiles/freefracformat.dir/freefracformat.cpp.o.d -o CMakeFiles/freefracformat.dir/freefracformat.cpp.o -c /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/freefracformat.cpp

src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/freefracformat.dir/freefracformat.cpp.i"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/freefracformat.cpp > CMakeFiles/freefracformat.dir/freefracformat.cpp.i

src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/freefracformat.dir/freefracformat.cpp.s"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/freefracformat.cpp -o CMakeFiles/freefracformat.dir/freefracformat.cpp.s

# Object files for target freefracformat
freefracformat_OBJECTS = \
"CMakeFiles/freefracformat.dir/freefracformat.cpp.o"

# External object files for target freefracformat
freefracformat_EXTERNAL_OBJECTS =

lib/freefracformat.so: src/formats/CMakeFiles/freefracformat.dir/freefracformat.cpp.o
lib/freefracformat.so: src/formats/CMakeFiles/freefracformat.dir/build.make
lib/freefracformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/freefracformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/freefracformat.so: lib/libinchi.so.0.4.1
lib/freefracformat.so: lib/libopenbabel.so.7.0.0
lib/freefracformat.so: lib/libmaeparser.so.1.2.3
lib/freefracformat.so: /home/o-o/anaconda3/lib/libboost_iostreams.so.1.82.0
lib/freefracformat.so: lib/libcoordgen.so.3.0.2
lib/freefracformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/freefracformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/freefracformat.so: src/formats/CMakeFiles/freefracformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module ../../lib/freefracformat.so"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freefracformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/freefracformat.dir/build: lib/freefracformat.so
.PHONY : src/formats/CMakeFiles/freefracformat.dir/build

src/formats/CMakeFiles/freefracformat.dir/clean:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/freefracformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/freefracformat.dir/clean

src/formats/CMakeFiles/freefracformat.dir/depend:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1 /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats/CMakeFiles/freefracformat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/formats/CMakeFiles/freefracformat.dir/depend

