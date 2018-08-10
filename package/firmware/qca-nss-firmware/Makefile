#
# Copyright (C) 2018 jollaman999
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=qca-nss-firmware
PKG_SOURCE_DATE:=2016-05-26
PKG_SOURCE_VERSION:=c570b28133795c62938ba65ae5bcd03cc156729c
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/qca/nss-firmware.git

PKG_MAINTAINER:=QStuff <razzlefratz@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/qca-nss-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  URL:=$(PKG_SOURCE_URL)
  DEPENDS:=+kmod-qca-nss-drv
  TITLE:=QCA NSS firmware for QCA IPQ806x SoC
endef

define Package/qca-nss-firmware/description
firmware files to enable the NSS MAC on QCA IPQ806x SoC.
endef

define Build/Compile

endef

define Package/qca-nss-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/R/retail_router0.bin \
		$(1)/lib/firmware/qca-nss0.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/R/retail_router1.bin \
		$(1)/lib/firmware/qca-nss1.bin
endef

$(eval $(call BuildPackage,qca-nss-firmware))
