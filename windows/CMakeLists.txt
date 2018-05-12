# Project Definition
# -----------------------------------------------------------------------------
project("windows_face")
add_executable"windows_face windows_main.cpp)

# Include Directories
# -----------------------------------------------------------------------------
include_directories(${face_core_SOURCE_DIR})

# Library Dependencies
# -----------------------------------------------------------------------------
target_link_libraries"windows_face face_core)