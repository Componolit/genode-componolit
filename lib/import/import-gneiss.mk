
GNEISS_INC_DIR = $(call select_from_repositories,modules/gneiss/src)
GNEISS_BLOCK_INC_DIR = $(GNEISS_INC_DIR)/block
GNEISS_LOG_INC_DIR = $(GNEISS_INC_DIR)/log
GNEISS_TIMER_INC_DIR = $(GNEISS_INC_DIR)/timer
GNEISS_PLATFORM_DIR = $(GNEISS_INC_DIR)/platform/genode
GNEISS_CONFIG_DIR = $(GNEISS_INC_DIR)/rom
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
	   $(GNEISS_TIMER_INC_DIR) \
	   $(GNEISS_TIMER_INC_DIR)/genode \
	   $(GNEISS_TIMER_INC_DIR)/client \
	   $(GNEISS_TIMER_INC_DIR)/client/genode \
	   $(GNEISS_CONFIG_DIR) \
	   $(GNEISS_CONFIG_DIR)/genode \
	   $(GNEISS_CONFIG_DIR)/client \
	   $(GNEISS_CONFIG_DIR)/client/genode

SRC_CC += cai_main.cc
SRC_ADB += componolit-gneiss-component.adb

vpath cai_main.cc $(GNEISS_PLATFORM_DIR)
vpath componolit-gneiss-component.adb $(GNEISS_PLATFORM_DIR)
