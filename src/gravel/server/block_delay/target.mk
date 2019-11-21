TARGET := block_delay
SRC_ADS := block.ads
SRC_ADB := component.adb block-server.adb block-service.adb config.adb jitter.adb
ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components
INC_DIR := $(ADA_COMPONENTS_DIR)/common/block_delay
LIBS := base spark gneiss sxml libsparkcrypto basalt
CC_ADA_WARN_STRICT ?=
vpath %.ads $(ADA_COMPONENTS_DIR)/common/block_delay
vpath %.adb $(ADA_COMPONENTS_DIR)/common/block_delay
