
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
	   componolit-gneiss-internal.ads \
	   componolit-gneiss-internal-block.ads \
	   componolit-gneiss-internal-log.ads \
	   componolit-gneiss.ads \
	   componolit-gneiss-types.ads \
	   componolit-gneiss-internal-types.ads \
	   componolit-gneiss-internal-timer.ads \
	   cxx-timer.ads \
	   cxx-timer-client.ads \
	   cxx-configuration.ads \
	   cxx-configuration-client.ads \
	   componolit-gneiss-internal-rom.ads \
	   componolit-gneiss-containers.ads

SRC_ADB += cxx-block-dispatcher.adb \
	   componolit-gneiss-block.adb \
	   componolit-gneiss-block-client.adb \
	   componolit-gneiss-block-server.adb \
	   componolit-gneiss-block-dispatcher.adb \
	   componolit-gneiss-log.adb \
	   componolit-gneiss-log-client.adb \
	   componolit-gneiss-timer.adb \
	   componolit-gneiss-timer-client.adb \
	   componolit-gneiss-rom.adb \
	   componolit-gneiss-rom-client.adb \
	   componolit-gneiss-strings.adb \
	   componolit-gneiss-strings_generic.adb \
	   componolit-gneiss-containers-fifo.adb

SRC_CC += cai_factory.cc \
	  block_client.cc \
	  block_dispatcher.cc \
	  block_server.cc \
	  log_client.cc \
	  timer_client.cc \
	  configuration_client.cc

LIBS = base spark

vpath cxx.ads $(GNEISS_PLATFORM_DIR)
vpath cxx-block.ads $(GNEISS_BLOCK_INC_DIR)/genode
vpath cxx-block-client.ads $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath cxx-block-server.ads $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath cxx-genode.ads $(GNEISS_PLATFORM_DIR)
vpath cxx-log.ads $(GNEISS_LOG_INC_DIR)/genode
vpath cxx-log-client.ads $(GNEISS_LOG_INC_DIR)/client/genode
vpath componolit-gneiss-internal.ads $(GNEISS_PLATFORM_DIR)
vpath componolit-gneiss-internal-block.ads $(GNEISS_BLOCK_INC_DIR)/genode
vpath componolit-gneiss-internal-log.ads $(GNEISS_LOG_INC_DIR)/genode
vpath componolit-gneiss.ads $(GNEISS_INC_DIR)
vpath componolit-gneiss-types.ads $(GNEISS_INC_DIR)
vpath componolit-gneiss-internal-types.ads $(GNEISS_PLATFORM_DIR)
vpath componolit-gneiss-internal-timer.ads $(GNEISS_TIMER_INC_DIR)/genode
vpath cxx-timer.ads $(GNEISS_TIMER_INC_DIR)/genode
vpath cxx-timer-client.ads $(GNEISS_TIMER_INC_DIR)/client/genode
vpath cxx-configuration.ads $(GNEISS_CONFIG_DIR)/client/genode
vpath cxx-configuration-client.ads $(GNEISS_CONFIG_DIR)/client/genode
vpath componolit-gneiss-internal-rom.ads $(GNEISS_CONFIG_DIR)/genode
vpath componolit-gneiss-containers.ads $(GNEISS_COMMON_DIR)
vpath cxx-block-dispatcher.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath componolit-gneiss-block.adb $(GNEISS_BLOCK_INC_DIR)/genode
vpath componolit-gneiss-block-client.adb $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath componolit-gneiss-block-server.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath componolit-gneiss-block-dispatcher.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath componolit-gneiss-block-util.adb $(GNEISS_BLOCK_INC_DIR)/genode
vpath componolit-gneiss-log.adb $(GNEISS_LOG_INC_DIR)/genode
vpath componolit-gneiss-log-client.adb $(GNEISS_LOG_INC_DIR)/client/genode
vpath componolit-gneiss-timer.adb $(GNEISS_TIMER_INC_DIR)/genode
vpath componolit-gneiss-timer-client.adb $(GNEISS_TIMER_INC_DIR)/client/genode
vpath componolit-gneiss-rom.adb $(GNEISS_CONFIG_DIR)/genode
vpath componolit-gneiss-rom-client.adb $(GNEISS_CONFIG_DIR)/client/genode
vpath componolit-gneiss-strings.adb $(GNEISS_COMMON_DIR)
vpath componolit-gneiss-strings_generic.adb $(GNEISS_COMMON_DIR)
vpath componolit-gneiss-containers-fifo.adb $(GNEISS_COMMON_DIR)
vpath cai_factory.cc $(GNEISS_PLATFORM_DIR)
vpath block_client.cc $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath block_dispatcher.cc $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath block_server.cc $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath log_client.cc $(GNEISS_LOG_INC_DIR)/client/genode
vpath timer_client.cc $(GNEISS_TIMER_INC_DIR)/client/genode
vpath configuration_client.cc $(GNEISS_CONFIG_DIR)/client/genode

SHARED_LIB = yes
