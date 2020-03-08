TARGET := parpen

SRC_ADB += \
	component.adb \
	rflx_container.adb \
	parpen-generic_types.adb \
	parpen-protocol.adb \
	parpen-protocol-generic_label.adb \
	parpen-protocol-generic_request.adb \
	parpen-protocol-generic_reply.adb \

SRC_ADS += \
	parpen.ads \

LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gravel/components/common/parpen
INC_DIR += $(MODULE_DIR) $(MODULE_DIR)/generated
CC_ADA_WARN_STRICT ?=
VPATH += $(MODULE_DIR) $(MODULE_DIR)/generated
