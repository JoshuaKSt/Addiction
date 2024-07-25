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
include src/formats/CMakeFiles/lmpdatformat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/formats/CMakeFiles/lmpdatformat.dir/compiler_depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/lmpdatformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/lmpdatformat.dir/flags.make

src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o: src/formats/CMakeFiles/lmpdatformat.dir/flags.make
src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/lmpdatformat.cpp
src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o: src/formats/CMakeFiles/lmpdatformat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o -MF CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o.d -o CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o -c /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/lmpdatformat.cpp

src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.i"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/lmpdatformat.cpp > CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.i

src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.s"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats/lmpdatformat.cpp -o CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.s

# Object files for target lmpdatformat
lmpdatformat_OBJECTS = \
"CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o"

# External object files for target lmpdatformat
lmpdatformat_EXTERNAL_OBJECTS =

lib/lmpdatformat.so: src/formats/CMakeFiles/lmpdatformat.dir/lmpdatformat.cpp.o
lib/lmpdatformat.so: src/formats/CMakeFiles/lmpdatformat.dir/build.make
lib/lmpdatformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/lmpdatformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/lmpdatformat.so: lib/libinchi.so.0.4.1
lib/lmpdatformat.so: lib/libopenbabel.so.7.0.0
lib/lmpdatformat.so: lib/libmaeparser.so.1.2.3
lib/lmpdatformat.so: /home/o-o/anaconda3/lib/libboost_iostreams.so.1.82.0
lib/lmpdatformat.so: lib/libcoordgen.so.3.0.2
lib/lmpdatformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/lmpdatformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/lmpdatformat.so: src/formats/CMakeFiles/lmpdatformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module ../../lib/lmpdatformat.so"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lmpdatformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/lmpdatformat.dir/build: lib/lmpdatformat.so
.PHONY : src/formats/CMakeFiles/lmpdatformat.dir/build

src/formats/CMakeFiles/lmpdatformat.dir/clean:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/lmpdatformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/lmpdatformat.dir/clean

src/formats/CMakeFiles/lmpdatformat.dir/depend:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1 /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/formats/CMakeFiles/lmpdatformat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/formats/CMakeFiles/lmpdatformat.dir/depend

