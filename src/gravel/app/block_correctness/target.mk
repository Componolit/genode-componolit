TARGET := block-test-correctness
SRC_ADB := component.adb correctness.adb output.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/block_correctness
LIBS := base spark gneiss libsparkcrypto permutation sxml
CC_ADA_WARN_STRICT ?=
vpath %.adb $(ADA_COMPONENTS_DIR)/common/block_correctness
