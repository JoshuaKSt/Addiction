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
include tools/CMakeFiles/obrotamer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/CMakeFiles/obrotamer.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obrotamer.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obrotamer.dir/flags.make

tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.o: tools/CMakeFiles/obrotamer.dir/flags.make
tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.o: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/tools/obrotamer.cpp
tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.o: tools/CMakeFiles/obrotamer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.o"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.o -MF CMakeFiles/obrotamer.dir/obrotamer.cpp.o.d -o CMakeFiles/obrotamer.dir/obrotamer.cpp.o -c /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/tools/obrotamer.cpp

tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/obrotamer.dir/obrotamer.cpp.i"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/tools/obrotamer.cpp > CMakeFiles/obrotamer.dir/obrotamer.cpp.i

tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/obrotamer.dir/obrotamer.cpp.s"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/tools/obrotamer.cpp -o CMakeFiles/obrotamer.dir/obrotamer.cpp.s

# Object files for target obrotamer
obrotamer_OBJECTS = \
"CMakeFiles/obrotamer.dir/obrotamer.cpp.o"

# External object files for target obrotamer
obrotamer_EXTERNAL_OBJECTS =

bin/obrotamer: tools/CMakeFiles/obrotamer.dir/obrotamer.cpp.o
bin/obrotamer: tools/CMakeFiles/obrotamer.dir/build.make
bin/obrotamer: lib/libopenbabel.so.7.0.0
bin/obrotamer: lib/libmaeparser.so.1.2.3
bin/obrotamer: /home/o-o/anaconda3/lib/libboost_iostreams.so.1.82.0
bin/obrotamer: lib/libcoordgen.so.3.0.2
bin/obrotamer: /usr/lib/x86_64-linux-gnu/libm.so
bin/obrotamer: /usr/lib/x86_64-linux-gnu/libz.so
bin/obrotamer: tools/CMakeFiles/obrotamer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/obrotamer"
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obrotamer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obrotamer.dir/build: bin/obrotamer
.PHONY : tools/CMakeFiles/obrotamer.dir/build

tools/CMakeFiles/obrotamer.dir/clean:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obrotamer.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obrotamer.dir/clean

tools/CMakeFiles/obrotamer.dir/depend:
	cd /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1 /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/tools /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools/CMakeFiles/obrotamer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tools/CMakeFiles/obrotamer.dir/depend

