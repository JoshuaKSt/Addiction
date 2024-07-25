# Install script for directory: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmaeparser.so.1.2.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmaeparser.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/home/o-o/anaconda3/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/libmaeparser.so.1.2.3"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/libmaeparser.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmaeparser.so.1.2.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmaeparser.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/o-o/anaconda3/lib:::::::::::::::"
           NEW_RPATH "/usr/local/lib:/home/o-o/anaconda3/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/lib/libmaeparser.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/maeparser-config.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/maeparser-config.cmake"
         "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/maeparser-v1.2.3/maeparser/CMakeFiles/Export/c220ae0af1591e9e9e916bba91f25986/maeparser-config.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/maeparser-config-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/maeparser-config.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/maeparser-v1.2.3/maeparser/CMakeFiles/Export/c220ae0af1591e9e9e916bba91f25986/maeparser-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/maeparser-v1.2.3/maeparser/CMakeFiles/Export/c220ae0af1591e9e9e916bba91f25986/maeparser-config-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/maeparser" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/Buffer.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/MaeBlock.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/MaeConstants.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/MaeParser.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/MaeParserConfig.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/Reader.hpp"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/external/maeparser-v1.2.3/maeparser/Writer.hpp"
    )
endif()

