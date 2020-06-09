TARGET := test-gneiss_log_proxy
SRC_ADS := log_proxy.ads
SRC_ADB := log_proxy-component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/log_proxy
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath log_proxy% $(MODULE_DIR)
