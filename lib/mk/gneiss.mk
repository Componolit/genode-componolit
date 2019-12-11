
include $(REP_DIR)/lib/import/import-gneiss.mk

CC_CXX_OPT += -Wno-attributes
CC_ADA_WARN_STRICT ?= -gnatwe -gnatyydSuxM120

SRC_ADS += cxx.ads \
	   cxx-block.ads \
	   cxx-block-client.ads \
	   cxx-block-server.ads \
	   cxx-genode.ads \
	   cxx-log.ads \
	   cxx-log-client.ads \
	   gneiss_internal.ads \
	   gneiss_internal-block.ads \
	   gneiss_internal-log.ads \
	   gneiss.ads \
	   gneiss_internal-timer.ads \
	   cxx-timer.ads \
	   cxx-timer-client.ads \
	   cxx-configuration.ads \
	   cxx-configuration-client.ads \
	   gneiss_internal-rom.ads

SRC_ADB += cxx-block-dispatcher.adb \
	   gneiss-block.adb \
	   gneiss-block-client.adb \
	   gneiss-block-server.adb \
	   gneiss-block-dispatcher.adb \
	   gneiss-log.adb \
	   gneiss-log-client.adb \
	   gneiss-timer.adb \
	   gneiss-timer-client.adb \
	   gneiss-rom.adb \
	   gneiss-rom-client.adb

SRC_CC += cai_factory.cc \
	  block_client.cc \
	  block_dispatcher.cc \
	  block_server.cc \
	  log_client.cc \
	  timer_client.cc \
	  configuration_client.cc

LIBS = base spark basalt

vpath cxx.ads $(GNEISS_PLATFORM_DIR)
vpath cxx-block.ads $(GNEISS_BLOCK_INC_DIR)/genode
vpath cxx-block-client.ads $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath cxx-block-server.ads $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath cxx-genode.ads $(GNEISS_PLATFORM_DIR)
vpath cxx-log.ads $(GNEISS_LOG_INC_DIR)/genode
vpath cxx-log-client.ads $(GNEISS_LOG_INC_DIR)/client/genode
vpath gneiss_internal.ads $(GNEISS_PLATFORM_DIR)
vpath gneiss_internal-block.ads $(GNEISS_BLOCK_INC_DIR)/genode
vpath gneiss_internal-log.ads $(GNEISS_LOG_INC_DIR)/genode
vpath gneiss.ads $(GNEISS_INC_DIR)
vpath gneiss_internal-timer.ads $(GNEISS_TIMER_INC_DIR)/genode
vpath cxx-timer.ads $(GNEISS_TIMER_INC_DIR)/genode
vpath cxx-timer-client.ads $(GNEISS_TIMER_INC_DIR)/client/genode
vpath cxx-configuration.ads $(GNEISS_CONFIG_DIR)/client/genode
vpath cxx-configuration-client.ads $(GNEISS_CONFIG_DIR)/client/genode
vpath gneiss_internal-rom.ads $(GNEISS_CONFIG_DIR)/genode
vpath cxx-block-dispatcher.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss-block.adb $(GNEISS_BLOCK_INC_DIR)/genode
vpath gneiss-block-client.adb $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath gneiss-block-server.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss-block-dispatcher.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss-block-util.adb $(GNEISS_BLOCK_INC_DIR)/genode
vpath gneiss-log.adb $(GNEISS_LOG_INC_DIR)/genode
vpath gneiss-log-client.adb $(GNEISS_LOG_INC_DIR)/client/genode
vpath gneiss-timer.adb $(GNEISS_TIMER_INC_DIR)/genode
vpath gneiss-timer-client.adb $(GNEISS_TIMER_INC_DIR)/client/genode
vpath gneiss-rom.adb $(GNEISS_CONFIG_DIR)/genode
vpath gneiss-rom-client.adb $(GNEISS_CONFIG_DIR)/client/genode
vpath cai_factory.cc $(GNEISS_PLATFORM_DIR)
vpath block_client.cc $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath block_dispatcher.cc $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath block_server.cc $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath log_client.cc $(GNEISS_LOG_INC_DIR)/client/genode
vpath timer_client.cc $(GNEISS_TIMER_INC_DIR)/client/genode
vpath configuration_client.cc $(GNEISS_CONFIG_DIR)/client/genode

SHARED_LIB = yes
