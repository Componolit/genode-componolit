TARGET := block-test-completeness
SRC_ADB := component.adb completeness.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/block_completeness
LIBS := base spark gneiss libsparkcrypto sxml
CC_ADA_WARN_STRICT ?=
vpath %.adb $(ADA_COMPONENTS_DIR)/common/block_completeness
