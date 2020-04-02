TARGET := parpen

SRC_ADB += \
	component.adb \
	parpen-binder-generic_ibinder.adb \
	parpen-binder.adb \
	parpen-builtin_types-conversions.ads \
	parpen-builtin_types.ads \
	parpen-container.adb \
	parpen-db.adb \
	parpen-generic_types.adb \
	parpen-message.adb \
	parpen-name_service.adb \
	parpen-namedb.adb \
	parpen-protocol-generic_label.adb \
	parpen-protocol-generic_offsets.adb \
	parpen-protocol-generic_request.adb \
	parpen-protocol-generic_contains.adb \
	parpen-protocol-generic_transaction.adb \
	parpen-protocol.adb \
	parpen-resolve.adb \
	parpen-service_manager.adb \
	parpen-service_manager-generic_request_add_service.adb \
	parpen-service_manager-generic_request_get_service.adb \
	parpen-unique_map.adb \

SRC_ADS += \
	parpen.ads \

LIBS := base spark gneiss basalt libsparkcrypto
MODULE_DIR = $(REP_DIR)/modules/gravel/components/common/parpen
INC_DIR += $(MODULE_DIR) $(MODULE_DIR)/generated
CC_ADA_WARN_STRICT ?=
VPATH += $(MODULE_DIR) $(MODULE_DIR)/generated
