
include $(REP_DIR)/lib/import/import-basalt.mk

CC_ADA_WARN_STRICT ?= -gnatwe -gnatyydSuxM120

SRC_ADS += basalt.ads

SRC_ADB += basalt-queue.adb \
	   basalt-slicer.adb \
	   basalt-strings.adb \
	   basalt-strings_generic.adb \

LIBS = base spark

vpath %.ads $(BASALT_INC_DIR)
vpath %.adb $(BASALT_INC_DIR)

SHARED_LIB = yes
