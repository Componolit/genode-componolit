TARGET := parpen-test-client
SRC_ADB := component.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/parpen/test/client
LIBS := base spark gneiss basalt
CC_ADA_WARN_STRICT ?=
vpath %.adb $(ADA_COMPONENTS_DIR)/common/parpen/test/client
