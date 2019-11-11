TARGET := test-gneiss_rom
SRC_ADB := component.adb
LIBS := base spark gneiss
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/rom
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath component.adb $(MODULE_DIR)
