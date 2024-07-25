# Install script for directory: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obabel.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obchiral.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obconformer.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obdistgen.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obenergy.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obfit.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obgen.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obgrep.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obgui.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obminimize.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obprobe.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obprop.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obrms.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obrotamer.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obrotate.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obspectrophore.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obsym.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obtautomer.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/obthermo.1"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/roundtrip.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openbabel/3.1.0" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/doc/splash.png")
endif()

