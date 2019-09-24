TARGET := block-test-completeness
SRC_ADB := component.adb completeness.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/block_completeness
LIBS := base spark gneiss libsparkcrypto sxml
vpath %.adb $(ADA_COMPONENTS_DIR)/common/block_completeness
