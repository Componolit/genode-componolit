TARGET := test-gneiss_message_server
SRC_ADS := message_server.ads
SRC_ADB := message_server-component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/message_server
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath message_server% $(MODULE_DIR)
