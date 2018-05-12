cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# Project Settings
# -----------------------------------------------------------------------------
project("face_project")

enable_testing()

# Compiler Settings
# -----------------------------------------------------------------------------
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" OR
    "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(warnings "-Wall -Wextra -Werror")
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
    set(warnings "/W4 /WX /EHsc")
endif()
if (NOT CONFIGURED_ONCE)
    set(CMAKE_CXX_FLAGS "${warnings}"
        CACHE STRING "Flags used by the compiler during all build types." FORCE)
    set(CMAKE_C_FLAGS   "${warnings}"
        CACHE STRING "Flags used by the compiler during all build types." FORCE)
endif()

# Directories
# -----------------------------------------------------------------------------
add_subdirectory("externals")
add_subdirectory("libraries")
add_subdirectory("mac")
# add_subdirectory("windows")
