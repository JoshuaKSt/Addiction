# Install script for directory: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcoordgen.so.3.0.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcoordgen.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/libcoordgen.so.3.0.2"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/libcoordgen.so.3"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcoordgen.so.3.0.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcoordgen.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/libcoordgen.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/coordgen" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/CoordgenConfig.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/CoordgenFragmentBuilder.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/CoordgenFragmenter.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/CoordgenMacrocycleBuilder.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/CoordgenMinimizer.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerAtom.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerBendInteraction.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerBond.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerClashInteraction.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerEZConstrainInteraction.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerFragment.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizer.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerInteraction.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerMarchingSquares.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerMaths.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerMolecule.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerResidue.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerResidueInteraction.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerRing.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/coordgen-master/coordgen/sketcherMinimizerStretchInteraction.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/coordgen-config.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/coordgen-config.cmake"
         "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/coordgen-master/coordgen/CMakeFiles/Export/c220ae0af1591e9e9e916bba91f25986/coordgen-config.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/coordgen-config-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/coordgen-config.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/coordgen-master/coordgen/CMakeFiles/Export/c220ae0af1591e9e9e916bba91f25986/coordgen-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/coordgen-master/coordgen/CMakeFiles/Export/c220ae0af1591e9e9e916bba91f25986/coordgen-config-release.cmake")
  endif()
endif()

