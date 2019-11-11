TARGET := block_dropper
SRC_ADS := block.ads
SRC_ADB := component.adb block-server.adb block-service.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/block_dropper
LIBS := base spark gneiss sxml libsparkcrypto
CC_ADA_WARN_STRICT ?=
vpath %.ads $(ADA_COMPONENTS_DIR)/common/block_dropper
vpath %.adb $(ADA_COMPONENTS_DIR)/common/block_dropper
