TARGET := test-gneiss_block_server
SRC_ADB := component.adb
LIBS := base spark gneiss
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/block_server
INC_DIR := $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath component.adb $(MODULE_DIR)
