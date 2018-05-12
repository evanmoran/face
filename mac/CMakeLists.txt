# Project Definition
# -----------------------------------------------------------------------------
project("mac_face")
add_executable(mac_face mac_main.cpp)

# Include Directories
# -----------------------------------------------------------------------------
include_directories(${face_core_project_SOURCE_DIR})

# Library Dependencies
# -----------------------------------------------------------------------------
target_link_libraries(mac_face face_core)