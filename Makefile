# Meta CMake Makefile
# =============================================================================
# Setup cmake with a makefile

# Project Constants
# -----------------------------------------------------------------------------
PROJECT_NAME=face_project

# Build Constants
# -----------------------------------------------------------------------------
ROOT_DIR=./
BUILD_UNIX_DIR=./build_unix
BUILD_VSTUDIO_DIR=./build_vstudio
BUILD_XCODE_DIR=./build_xcode

# Configuration
# -----------------------------------------------------------------------------

RM_RF=rm -rf
MKDIR_P = mkdir -p

# Rules
# -----------------------------------------------------------------------------

all: clean setup

clean: cleanall

unix: clean_unix setup_unix make_unix test_unix

xcode: clean_xcode setup_xcode open_xcode

setupall: setup_unix setup_xcode setup_visual_studio

cleanall: clean_unix clean_xcode clean_visual_studio

# Unix
# -----------------------------------------------------------------------------
setup_unix:
	$(MKDIR_P) $(BUILD_UNIX_DIR)
	cmake -G "Unix Makefiles" $(BUILD_UNIX_DIR) -B$(BUILD_UNIX_DIR) -H$(ROOT_DIR)

clean_unix:
	$(RM_RF) $(BUILD_UNIX_DIR)

make_unix:
	$(MAKE) -C $(BUILD_UNIX_DIR)

test_unix:
	cd $(BUILD_UNIX_DIR); ctest

# XCode
# -----------------------------------------------------------------------------
setup_xcode:
	$(MKDIR_P) $(BUILD_XCODE_DIR)
	cmake -G "Xcode" $(BUILD_XCODE_DIR) -B$(BUILD_XCODE_DIR) -H$(ROOT_DIR)

clean_xcode:
	$(RM_RF) $(BUILD_XCODE_DIR)

open_xcode:
	open $(BUILD_XCODE_DIR)/$(PROJECT_NAME).xcodeproj

# Visual Studio
# -----------------------------------------------------------------------------
setup_visual_studio:
	$(MKDIR_P) $(BUILD_VSTUDIO_DIR)
	cmake -G "Visual Studio 10" $(BUILD_VSTUDIO_DIR) -B$(BUILD_VSTUDIO_DIR) -H$(ROOT_DIR)

clean_visual_studio:
	$(RM_RF) $(BUILD_VSTUDIO_DIR)

open_visual_studio:
	start $(BUILD_VSTUDIO_DIR)/$(BUILD_VSTUDIO_DIR).sln
