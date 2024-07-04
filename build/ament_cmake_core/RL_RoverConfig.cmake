# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_RL_Rover_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED RL_Rover_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(RL_Rover_FOUND FALSE)
  elseif(NOT RL_Rover_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(RL_Rover_FOUND FALSE)
  endif()
  return()
endif()
set(_RL_Rover_CONFIG_INCLUDED TRUE)

# output package information
if(NOT RL_Rover_FIND_QUIETLY)
  message(STATUS "Found RL_Rover: 0.0.0 (${RL_Rover_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'RL_Rover' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${RL_Rover_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(RL_Rover_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${RL_Rover_DIR}/${_extra}")
endforeach()
