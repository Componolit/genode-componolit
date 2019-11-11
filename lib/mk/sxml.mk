
include $(REP_DIR)/lib/import/import-sxml.mk

SRC_ADB += sxml.adb \
	   sxml-parser.adb \
	   sxml-query.adb \
	   sxml-serialize.adb
SRC_CC += mem.cc
LIBS = base spark
CC_ADA_WARN_STRICT ?=

vpath %.adb $(LIB_DIR)
vpath %.cc  $(REP_DIR)/src/lib/sxml
