TARGET := test-gneiss_hello_world
SRC_ADB := component.adb
LIBS := base spark gneiss
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/hello_world
INC_DIR += $(MODULE_DIR)
vpath component.adb $(MODULE_DIR)
