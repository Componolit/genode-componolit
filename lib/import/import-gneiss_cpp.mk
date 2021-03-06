
GNEISS_INC_DIR = $(call select_from_repositories,modules/gneiss/src)
GNEISS_BLOCK_INC_DIR = $(GNEISS_INC_DIR)/block
GNEISS_LOG_INC_DIR = $(GNEISS_INC_DIR)/log
GNEISS_TIMER_INC_DIR = $(GNEISS_INC_DIR)/timer
GNEISS_PLATFORM_DIR = $(GNEISS_INC_DIR)/platform/genode
GNEISS_ROM_DIR = $(GNEISS_INC_DIR)/rom
GNEISS_MEMORY_DIR = $(GNEISS_INC_DIR)/memory
GNEISS_MESSAGE_DIR = $(GNEISS_INC_DIR)/message
GNEISS_COMMON_DIR = $(GNEISS_INC_DIR)/common

INC_DIR += $(GNEISS_INC_DIR) \
	   $(GNEISS_COMMON_DIR) \
	   $(GNEISS_PLATFORM_DIR) \
	   $(GNEISS_BLOCK_INC_DIR) \
	   $(GNEISS_BLOCK_INC_DIR)/genode \
	   $(GNEISS_BLOCK_INC_DIR)/client \
	   $(GNEISS_BLOCK_INC_DIR)/client/genode \
	   $(GNEISS_BLOCK_INC_DIR)/server \
	   $(GNEISS_BLOCK_INC_DIR)/server/genode \
	   $(GNEISS_LOG_INC_DIR) \
	   $(GNEISS_LOG_INC_DIR)/genode \
	   $(GNEISS_LOG_INC_DIR)/client \
	   $(GNEISS_LOG_INC_DIR)/client/genode \
	   $(GNEISS_LOG_INC_DIR)/server \
	   $(GNEISS_LOG_INC_DIR)/server/genode \
	   $(GNEISS_TIMER_INC_DIR) \
	   $(GNEISS_TIMER_INC_DIR)/genode \
	   $(GNEISS_TIMER_INC_DIR)/client \
	   $(GNEISS_TIMER_INC_DIR)/client/genode \
	   $(GNEISS_ROM_DIR) \
	   $(GNEISS_ROM_DIR)/genode \
	   $(GNEISS_ROM_DIR)/client \
	   $(GNEISS_ROM_DIR)/client/genode \
	   $(GNEISS_MEMORY_DIR) \
	   $(GNEISS_MEMORY_DIR)/genode \
	   $(GNEISS_MEMORY_DIR)/client \
	   $(GNEISS_MEMORY_DIR)/client/genode \
	   $(GNEISS_MEMORY_DIR)/server \
	   $(GNEISS_MEMORY_DIR)/server/genode \
	   $(GNEISS_MESSAGE_DIR) \
	   $(GNEISS_MESSAGE_DIR)/genode \
	   $(GNEISS_MESSAGE_DIR)/client \
	   $(GNEISS_MESSAGE_DIR)/client/genode \
	   $(GNEISS_MESSAGE_DIR)/server \
	   $(GNEISS_MESSAGE_DIR)/server/genode

