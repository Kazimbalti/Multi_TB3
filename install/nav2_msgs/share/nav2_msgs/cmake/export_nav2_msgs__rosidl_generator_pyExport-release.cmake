#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nav2_msgs::nav2_msgs__rosidl_generator_py" for configuration "Release"
set_property(TARGET nav2_msgs::nav2_msgs__rosidl_generator_py APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nav2_msgs::nav2_msgs__rosidl_generator_py PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libnav2_msgs__rosidl_generator_py.so"
  IMPORTED_SONAME_RELEASE "libnav2_msgs__rosidl_generator_py.so"
  )

list(APPEND _cmake_import_check_targets nav2_msgs::nav2_msgs__rosidl_generator_py )
list(APPEND _cmake_import_check_files_for_nav2_msgs::nav2_msgs__rosidl_generator_py "${_IMPORT_PREFIX}/lib/libnav2_msgs__rosidl_generator_py.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
