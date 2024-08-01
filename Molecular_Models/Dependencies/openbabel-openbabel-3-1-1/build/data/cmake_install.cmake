# Install script for directory: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openbabel/3.1.0" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/atomization-energies.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/atomtyp.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/babel_povray3.inc"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/bondtyp.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem2015ba.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem2015bm.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem2015bn.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem2015ha.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem2015hm.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eem2015hn.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/eqeqIonizations.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/gaff.dat"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/gaff.prm"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/ghemical.prm"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/logp.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/MACCS.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmff94.ff"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmff94s.ff"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffang.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffbndk.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffbond.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffchg.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffdef.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffdfsb.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffoop.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffpbci.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffprop.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffstbn.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmfftor.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffvdw.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffs_oop.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mmffs_tor.par"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mpC.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/mr.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/patterns.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/phmodel.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/plugindefines.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/psa.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/qeq.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/resdata.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/rigid-fragments.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/rigid-fragments-index.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/ring-fragments.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/ringtyp.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/SMARTS_InteLigand.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/space-groups.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/superatom.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/svgformat.script"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/templates.sdf"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/torlib.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/torsion.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/types.txt"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/data/UFF.prm"
    )
endif()

