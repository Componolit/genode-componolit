
include $(REP_DIR)/lib/import/import-permutation.mk

SRC_ADB += permutation.adb
LIBS = base spark
CC_ADA_WARN_STRICT ?=

vpath permutation.adb $(LIB_DIR)
