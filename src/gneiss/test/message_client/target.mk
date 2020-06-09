TARGET := test-gneiss_message_client
SRC_ADS := message_client.ads
SRC_ADB := message_client-component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/message_client
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath message_client% $(MODULE_DIR)
