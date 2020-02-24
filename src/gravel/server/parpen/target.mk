TARGET := parpen
SRC_ADB := component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gravel/components/common/parpen
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath component.adb $(MODULE_DIR)
