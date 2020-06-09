TARGET := test-gneiss_memory_client
SRC_ADS := memory_client.ads
SRC_ADB := memory_client-component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/memory_client
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath memory_client% $(MODULE_DIR)
