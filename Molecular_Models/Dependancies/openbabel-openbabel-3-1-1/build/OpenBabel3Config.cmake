# The OpenBabel3 config file. To get the targets include the exports file.
get_filename_component(OpenBabel3_INSTALL_PREFIX "${OpenBabel3_DIR}"
  ABSOLUTE)

set(OpenBabel3_VERSION_MAJOR   "3")
set(OpenBabel3_VERSION_MINOR   "1")
set(OpenBabel3_VERSION_PATCH   "0")
set(OpenBabel3_VERSION         "3.1.0")

set(OpenBabel3_INCLUDE_DIRS "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/include;/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/include")
set(OpenBabel3_LIBRARIES "")
set(OpenBabel3_EXPORTS_FILE "/home/o-o/Coding/Molecular_Models/Dependancies/openbabel-openbabel-3-1-1/build/OpenBabel3_EXPORTS.cmake")
set(OpenBabel3_ENABLE_VERSIONED_FORMATS "ON")

# Include the exports file to import the exported OpenBabel targets
include("${OpenBabel3_EXPORTS_FILE}")
