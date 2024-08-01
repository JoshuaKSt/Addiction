#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "coordgen" for configuration "Release"
set_property(TARGET coordgen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(coordgen PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcoordgen.so.3.0.2"
  IMPORTED_SONAME_RELEASE "libcoordgen.so.3"
  )

list(APPEND _cmake_import_check_targets coordgen )
list(APPEND _cmake_import_check_files_for_coordgen "${_IMPORT_PREFIX}/lib/libcoordgen.so.3.0.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
