# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_roscon2022_control_workshop_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED roscon2022_control_workshop_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(roscon2022_control_workshop_FOUND FALSE)
  elseif(NOT roscon2022_control_workshop_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(roscon2022_control_workshop_FOUND FALSE)
  endif()
  return()
endif()
set(_roscon2022_control_workshop_CONFIG_INCLUDED TRUE)

# output package information
if(NOT roscon2022_control_workshop_FIND_QUIETLY)
  message(STATUS "Found roscon2022_control_workshop: 0.0.0 (${roscon2022_control_workshop_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'roscon2022_control_workshop' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${roscon2022_control_workshop_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(roscon2022_control_workshop_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${roscon2022_control_workshop_DIR}/${_extra}")
endforeach()
