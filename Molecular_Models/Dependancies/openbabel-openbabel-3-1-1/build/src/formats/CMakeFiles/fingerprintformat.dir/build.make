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
include src/formats/CMakeFiles/fingerprintformat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/formats/CMakeFiles/fingerprintformat.dir/compiler_depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/fingerprintformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/fingerprintformat.dir/flags.make

src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o: src/formats/CMakeFiles/fingerprintformat.dir/flags.make
src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/fingerprintformat.cpp
src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o: src/formats/CMakeFiles/fingerprintformat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o -MF CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o.d -o CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o -c /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/fingerprintformat.cpp

src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.i"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/fingerprintformat.cpp > CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.i

src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.s"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/fingerprintformat.cpp -o CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.s

# Object files for target fingerprintformat
fingerprintformat_OBJECTS = \
"CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o"

# External object files for target fingerprintformat
fingerprintformat_EXTERNAL_OBJECTS =

lib/fingerprintformat.so: src/formats/CMakeFiles/fingerprintformat.dir/fingerprintformat.cpp.o
lib/fingerprintformat.so: src/formats/CMakeFiles/fingerprintformat.dir/build.make
lib/fingerprintformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/fingerprintformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/fingerprintformat.so: lib/libinchi.so.0.4.1
lib/fingerprintformat.so: lib/libopenbabel.so.7.0.0
lib/fingerprintformat.so: lib/libmaeparser.so.1.2.3
lib/fingerprintformat.so: /home/o-o/anaconda3/lib/libboost_iostreams.so.1.82.0
lib/fingerprintformat.so: lib/libcoordgen.so.3.0.2
lib/fingerprintformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/fingerprintformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/fingerprintformat.so: src/formats/CMakeFiles/fingerprintformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module ../../lib/fingerprintformat.so"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fingerprintformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/fingerprintformat.dir/build: lib/fingerprintformat.so
.PHONY : src/formats/CMakeFiles/fingerprintformat.dir/build

src/formats/CMakeFiles/fingerprintformat.dir/clean:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/fingerprintformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/fingerprintformat.dir/clean

src/formats/CMakeFiles/fingerprintformat.dir/depend:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1 /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats/CMakeFiles/fingerprintformat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/formats/CMakeFiles/fingerprintformat.dir/depend

