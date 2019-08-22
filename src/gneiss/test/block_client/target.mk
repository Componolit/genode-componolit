TARGET := test-gneiss_block_client
SRC_ADB := component.adb
LIBS := base spark gneiss
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/block_client
INC_DIR := $(MODULE_DIR)
vpath component.adb $(MODULE_DIR)
