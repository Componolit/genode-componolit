TARGET := parpen_test_no_mem_session

SRC_ADB := \
	component.adb \
	parpen-generic_types.adb \
	parpen-protocol-generic_reply.adb \
	parpen-protocol-generic_label.adb \
	parpen-container.adb

SRC_ADS := \
	parpen.ads \
	parpen-protocol.ads

ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components

INC_DIR := \
	$(ADA_COMPONENTS_DIR)/common/parpen \
	$(ADA_COMPONENTS_DIR)/common/parpen/generated \
	$(ADA_COMPONENTS_DIR)/common/parpen/test \
	$(ADA_COMPONENTS_DIR)/common/parpen/test/no_mem_session \

LIBS := base spark gneiss basalt
CC_ADA_WARN_STRICT ?=

vpath %.ads \
	$(ADA_COMPONENTS_DIR)/common/parpen \
	$(ADA_COMPONENTS_DIR)/common/parpen/generated

vpath %.adb \
	$(ADA_COMPONENTS_DIR)/common/parpen/test/no_mem_session \
	$(ADA_COMPONENTS_DIR)/common/parpen/generated \
	$(ADA_COMPONENTS_DIR)/common/parpen/ \
