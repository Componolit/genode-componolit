
include $(REP_DIR)/lib/import/import-gneiss_cpp.mk

CC_CXX_OPT += -Wno-attributes

SRC_CC += cai_factory.cc \
	  log_client.cc \
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

LIBS = base

vpath cai_factory.cc $(GNEISS_PLATFORM_DIR)
vpath log_client.cc $(GNEISS_LOG_INC_DIR)/client/genode
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
