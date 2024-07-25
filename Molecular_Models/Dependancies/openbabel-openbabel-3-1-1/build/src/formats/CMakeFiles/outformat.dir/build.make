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
include src/formats/CMakeFiles/outformat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/formats/CMakeFiles/outformat.dir/compiler_depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/outformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/outformat.dir/flags.make

src/formats/CMakeFiles/outformat.dir/outformat.cpp.o: src/formats/CMakeFiles/outformat.dir/flags.make
src/formats/CMakeFiles/outformat.dir/outformat.cpp.o: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/outformat.cpp
src/formats/CMakeFiles/outformat.dir/outformat.cpp.o: src/formats/CMakeFiles/outformat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/formats/CMakeFiles/outformat.dir/outformat.cpp.o"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/formats/CMakeFiles/outformat.dir/outformat.cpp.o -MF CMakeFiles/outformat.dir/outformat.cpp.o.d -o CMakeFiles/outformat.dir/outformat.cpp.o -c /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/outformat.cpp

src/formats/CMakeFiles/outformat.dir/outformat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/outformat.dir/outformat.cpp.i"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/outformat.cpp > CMakeFiles/outformat.dir/outformat.cpp.i

src/formats/CMakeFiles/outformat.dir/outformat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/outformat.dir/outformat.cpp.s"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/outformat.cpp -o CMakeFiles/outformat.dir/outformat.cpp.s

# Object files for target outformat
outformat_OBJECTS = \
"CMakeFiles/outformat.dir/outformat.cpp.o"

# External object files for target outformat
outformat_EXTERNAL_OBJECTS =

lib/outformat.so: src/formats/CMakeFiles/outformat.dir/outformat.cpp.o
lib/outformat.so: src/formats/CMakeFiles/outformat.dir/build.make
lib/outformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/outformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/outformat.so: lib/libinchi.so.0.4.1
lib/outformat.so: lib/libopenbabel.so.7.0.0
lib/outformat.so: lib/libmaeparser.so.1.2.3
lib/outformat.so: /home/o-o/anaconda3/lib/libboost_iostreams.so.1.82.0
lib/outformat.so: lib/libcoordgen.so.3.0.2
lib/outformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/outformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/outformat.so: src/formats/CMakeFiles/outformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module ../../lib/outformat.so"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/outformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/outformat.dir/build: lib/outformat.so
.PHONY : src/formats/CMakeFiles/outformat.dir/build

src/formats/CMakeFiles/outformat.dir/clean:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/outformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/outformat.dir/clean

src/formats/CMakeFiles/outformat.dir/depend:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1 /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats/CMakeFiles/outformat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/formats/CMakeFiles/outformat.dir/depend

