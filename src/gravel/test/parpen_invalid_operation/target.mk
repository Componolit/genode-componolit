TARGET := parpen_test_invalid_operation

SRC_ADB := \
	component.adb \
	parpen-generic_types.adb \
	parpen-protocol-generic_request.adb \
	parpen-protocol-generic_reply.adb \
	parpen-protocol-generic_label.adb \
	rflx_container.adb

SRC_ADS := \
	parpen.ads \
	parpen-protocol.ads

ADA_COMPONENTS_DIR = $(REP_DIR)/modules/gravel/components

INC_DIR := \
	$(ADA_COMPONENTS_DIR)/common/parpen \
	$(ADA_COMPONENTS_DIR)/common/parpen/generated \
	$(ADA_COMPONENTS_DIR)/common/parpen/test \
	$(ADA_COMPONENTS_DIR)/common/parpen/test/invalid_operation \

LIBS := base spark gneiss basalt
CC_ADA_WARN_STRICT ?=

vpath %.ads \
	$(ADA_COMPONENTS_DIR)/common/parpen \
	$(ADA_COMPONENTS_DIR)/common/parpen/generated

vpath %.adb \
	$(ADA_COMPONENTS_DIR)/common/parpen/test/invalid_operation \
	$(ADA_COMPONENTS_DIR)/common/parpen/generated \
	$(ADA_COMPONENTS_DIR)/common/parpen/ \
