TARGET := block_throttle
SRC_ADB := component.adb config.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/block_throttle
LIBS := base spark gneiss sxml
CC_ADA_WARN_STRICT ?=
vpath %.adb $(ADA_COMPONENTS_DIR)/common/block_throttle
