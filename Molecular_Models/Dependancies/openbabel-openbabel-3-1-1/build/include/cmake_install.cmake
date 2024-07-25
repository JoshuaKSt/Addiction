# Install script for directory: /home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/inchi" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/inchi_api.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/openbabel" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/chemdrawcdx.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/openbabel" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/alias.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/atom.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/base.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/bitvec.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/bond.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/bondtyper.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/builder.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/canon.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/chains.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/chargemodel.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/conformersearch.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/data.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/data_utilities.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/descriptor.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/distgeom.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/dlhandler.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/elements.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/fingerprint.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/forcefield.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/format.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/generic.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/graphsym.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/grid.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/griddata.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/groupcontrib.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/inchiformat.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/internalcoord.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/isomorphism.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/json.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/kekulize.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/kinetics.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/lineend.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/locale.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/matrix.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/mcdlutil.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/mol.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/molchrg.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/obconversion.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/oberror.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/obfunctions.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/obiter.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/obmolecformat.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/obutil.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/op.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/optransform.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/parsmart.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/patty.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/phmodel.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/plugin.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/pointgroup.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/query.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/reaction.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/reactionfacade.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/residue.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/ring.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/rotamer.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/rotor.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/shared_ptr.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/spectrophore.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/tautomer.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/text.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/tokenst.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/typer.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/xml.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/openbabel/math" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/math/align.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/math/erf.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/math/matrix3x3.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/math/spacegroup.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/math/transform3d.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/math/vector3.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/openbabel/stereo" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/bindings.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/cistrans.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/squareplanar.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/stereo.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/tetrahedral.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/tetranonplanar.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/stereo/tetraplanar.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/openbabel/depict" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/depict/asciipainter.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/depict/cairopainter.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/depict/commandpainter.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/depict/depict.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/depict/painter.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/openbabel/depict/svgpainter.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3" TYPE FILE FILES "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/LBFGS.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel3/LBFGS" TYPE FILE FILES
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/LBFGS/LineSearchBacktracking.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/LBFGS/LineSearchBracketing.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/LBFGS/LineSearchNocedalWright.h"
    "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include/LBFGS/Param.h"
    )
endif()

