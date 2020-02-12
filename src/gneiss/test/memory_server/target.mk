TARGET := test-gneiss_memory_server
SRC_ADB := component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/memory_server
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath component.adb $(MODULE_DIR)
