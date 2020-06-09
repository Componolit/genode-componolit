TARGET := test-gneiss_hello_world
SRC_ADS := hello_world.ads
SRC_ADB := hello_world-component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/hello_world
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath hello_world% $(MODULE_DIR)
