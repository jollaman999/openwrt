LOC_DIR=src/init
LIB=INIT

include $(PRJ_PATH)/make/config.mk

SRC_LIST=ssdk_init.c ssdk_plat.c ssdk_interrupt.c ssdk_clk.c ssdk_dts.c \
	ssdk_phy_i2c.c

ifneq (,$(findstring HPPE, $(SUPPORT_CHIP)))
	SRC_LIST += ssdk_hppe.c
endif

ifeq (TRUE, $(SWCONFIG))
	SRC_LIST += ssdk_uci.c
endif

include $(PRJ_PATH)/make/components.mk
include $(PRJ_PATH)/make/defs.mk
include $(PRJ_PATH)/make/target.mk

all: dep obj
