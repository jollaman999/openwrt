#
# Copyright (C) 2020 jollaman999
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=notsodeep
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/notsodeep
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+libnfnetlink +libnetfilter-queue +iptables-mod-nfqueue
  TITLE:=Active DPI circumvention utility for Linux
  URL:=https://github.com/farukuzun/notsodeep
endef

define Package/notsodeep/description
 Bypass the blocking of http and https web-sites in countries like Russia, Iran.
endef

TARGET_CFLAGS += $(FPIC) -D_GNU_SOURCE

define Build/Compile
	$(TARGET_CC) $(TARGET_CFLAGS) -Wall \
		-Wextra -Wformat-security -O3 -fstack-protector-all \
		-lnetfilter_queue -lnfnetlink \
		-o $(PKG_BUILD_DIR)/notsodeep $(PKG_BUILD_DIR)/notsodeep.c
endef

define Package/notsodeep/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/notsodeep $(1)/usr/bin/
endef

$(eval $(call BuildPackage,notsodeep))
