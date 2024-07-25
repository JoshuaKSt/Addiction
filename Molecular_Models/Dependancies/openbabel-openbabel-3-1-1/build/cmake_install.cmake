# Install script for directory: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/openbabel" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/include/openbabel/babelconfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/openbabel-3.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3/OpenBabel3_EXPORTS.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3/OpenBabel3_EXPORTS.cmake"
         "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles/Export/1d1c8b465651080a669507d8c136405f/OpenBabel3_EXPORTS.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3/OpenBabel3_EXPORTS-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3/OpenBabel3_EXPORTS.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles/Export/1d1c8b465651080a669507d8c136405f/OpenBabel3_EXPORTS.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/CMakeFiles/Export/1d1c8b465651080a669507d8c136405f/OpenBabel3_EXPORTS-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3" TYPE FILE RENAME "OpenBabel3Config.cmake" FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/OpenBabel3ConfigInstall.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/openbabel3" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/OpenBabel3ConfigVersion.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/maeparser-v1.2.3/maeparser/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/external/coordgen-master/coordgen/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/include/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/data/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/doc/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/src/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/tools/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/test/cmake_install.cmake")
  include("/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/scripts/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
