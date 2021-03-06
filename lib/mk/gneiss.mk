
include $(REP_DIR)/lib/import/import-gneiss.mk

CC_CXX_OPT += -Wno-attributes
CC_ADA_WARN_STRICT ?= -gnatwe -gnatyydSuxM120

SRC_ADS += cxx.ads \
	   cxx-block.ads \
	   cxx-block-client.ads \
	   cxx-block-server.ads \
	   cxx-genode.ads \
	   gneiss-log-server.ads \
	   gneiss_internal-block.ads \
	   gneiss_internal-log.ads \
	   gneiss.ads \
	   gneiss_internal-timer.ads \
	   cxx-timer.ads \
	   cxx-timer-client.ads \
	   gneiss_internal-rom.ads \
	   gneiss_internal-memory.ads \
	   gneiss_internal-message.ads

SRC_ADB += genode.adb \
	   cxx-block-dispatcher.adb \
	   gneiss_internal.adb \
	   gneiss-block.adb \
	   gneiss-block-client.adb \
	   gneiss-block-server.adb \
	   gneiss-block-dispatcher.adb \
	   gneiss-log.adb \
	   gneiss-log-client.adb \
	   gneiss-log-dispatcher.adb \
	   gneiss-timer.adb \
	   gneiss-timer-client.adb \
	   gneiss-rom.adb \
	   gneiss-rom-client.adb \
	   gneiss-memory.adb \
	   gneiss-memory-client.adb \
	   gneiss-memory-server.adb \
	   gneiss-memory-dispatcher.adb \
	   gneiss-message.adb \
	   gneiss-message-client.adb \
	   gneiss-message-server.adb \
	   gneiss-message-dispatcher.adb

SRC_CC += cai_factory.cc \
	  block_client.cc \
	  block_dispatcher.cc \
	  block_server.cc \
	  gneiss_log_client.cc \
	  gneiss_log_server.cc \
	  gneiss_log_dispatcher.cc \
	  timer_client.cc \
	  gneiss_rom_client.cc \
	  gneiss_memory_dispatcher.cc \
	  gneiss_memory_server.cc \
	  gneiss_memory_client.cc \
	  gneiss_message_client.cc \
	  gneiss_message_server.cc \
	  gneiss_message_dispatcher.cc

LIBS = base spark basalt

vpath cxx.ads $(GNEISS_PLATFORM_DIR)
vpath cxx-block.ads $(GNEISS_BLOCK_INC_DIR)/genode
vpath cxx-block-client.ads $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath cxx-block-server.ads $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath cxx-genode.ads $(GNEISS_PLATFORM_DIR)
vpath gneiss-log-server.ads $(GNEISS_LOG_INC_DIR)/server
vpath gneiss_internal-block.ads $(GNEISS_BLOCK_INC_DIR)/genode
vpath gneiss_internal-log.ads $(GNEISS_LOG_INC_DIR)/genode
vpath gneiss.ads $(GNEISS_INC_DIR)
vpath gneiss_internal-timer.ads $(GNEISS_TIMER_INC_DIR)/genode
vpath cxx-timer.ads $(GNEISS_TIMER_INC_DIR)/genode
vpath cxx-timer-client.ads $(GNEISS_TIMER_INC_DIR)/client/genode
vpath gneiss_internal-rom.ads $(GNEISS_ROM_DIR)/genode
vpath gneiss_internal-memory.ads $(GNEISS_MEMORY_DIR)/genode
vpath gneiss_internal-message.ads $(GNEISS_MESSAGE_DIR)/genode
vpath genode.adb $(GNEISS_PLATFORM_DIR)
vpath cxx-block-dispatcher.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss_internal.adb $(GNEISS_PLATFORM_DIR)
vpath gneiss-block.adb $(GNEISS_BLOCK_INC_DIR)/genode
vpath gneiss-block-client.adb $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath gneiss-block-server.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss-block-dispatcher.adb $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss-block-util.adb $(GNEISS_BLOCK_INC_DIR)/genode
vpath gneiss-log.adb $(GNEISS_LOG_INC_DIR)/genode
vpath gneiss-log-client.adb $(GNEISS_LOG_INC_DIR)/client/genode
vpath gneiss-log-dispatcher.adb $(GNEISS_LOG_INC_DIR)/server/genode
vpath gneiss-timer.adb $(GNEISS_TIMER_INC_DIR)/genode
vpath gneiss-timer-client.adb $(GNEISS_TIMER_INC_DIR)/client/genode
vpath gneiss-rom.adb $(GNEISS_ROM_DIR)/genode
vpath gneiss-rom-client.adb $(GNEISS_ROM_DIR)/client/genode
vpath gneiss-memory.adb $(GNEISS_MEMORY_DIR)/genode
vpath gneiss-memory-client.adb $(GNEISS_MEMORY_DIR)/client/genode
vpath gneiss-memory-server.adb $(GNEISS_MEMORY_DIR)/server/genode
vpath gneiss-memory-dispatcher.adb $(GNEISS_MEMORY_DIR)/server/genode
vpath gneiss-message.adb $(GNEISS_MESSAGE_DIR)/genode
vpath gneiss-message-client.adb $(GNEISS_MESSAGE_DIR)/client/genode
vpath gneiss-message-server.adb $(GNEISS_MESSAGE_DIR)/server/genode
vpath gneiss-message-dispatcher.adb $(GNEISS_MESSAGE_DIR)/server/genode
vpath cai_factory.cc $(GNEISS_PLATFORM_DIR)
vpath block_client.cc $(GNEISS_BLOCK_INC_DIR)/client/genode
vpath block_dispatcher.cc $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath block_server.cc $(GNEISS_BLOCK_INC_DIR)/server/genode
vpath gneiss_log_client.cc $(GNEISS_LOG_INC_DIR)/client/genode
vpath gneiss_log_server.cc $(GNEISS_LOG_INC_DIR)/server/genode
vpath gneiss_log_dispatcher.cc $(GNEISS_LOG_INC_DIR)/server/genode
vpath timer_client.cc $(GNEISS_TIMER_INC_DIR)/client/genode
vpath gneiss_rom_client.cc $(GNEISS_ROM_DIR)/client/genode
vpath gneiss_memory_dispatcher.cc $(GNEISS_MEMORY_DIR)/server/genode
vpath gneiss_memory_server.cc $(GNEISS_MEMORY_DIR)/server/genode
vpath gneiss_memory_client.cc $(GNEISS_MEMORY_DIR)/client/genode
vpath gneiss_message_client.cc $(GNEISS_MESSAGE_DIR)/client/genode
vpath gneiss_message_server.cc $(GNEISS_MESSAGE_DIR)/server/genode
vpath gneiss_message_dispatcher.cc $(GNEISS_MESSAGE_DIR)/server/genode

SHARED_LIB = yes
