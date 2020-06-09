TARGET := test-gneiss_rom
SRC_ADS := rom.ads
SRC_ADB := rom-component.adb
LIBS := base spark gneiss basalt
MODULE_DIR = $(REP_DIR)/modules/gneiss/test/rom
INC_DIR += $(MODULE_DIR)
CC_ADA_WARN_STRICT ?=
vpath rom% $(MODULE_DIR)
