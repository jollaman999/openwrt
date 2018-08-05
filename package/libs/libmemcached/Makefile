#
# Copyright (C) 2018 jollaman999
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/uclibc++.mk

PKG_LICENSE:=BSD
PKG_MAINTAINER:=Brian Aker <brian@tangent.org>

PKG_NAME:=libmemcached
PKG_VERSION:=1.0.18
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://launchpad.net/libmemcached/1.0/1.0.18/+download/
PKG_HASH:=e22c0bb032fde08f53de9ffbc5a128233041d9f33b5de022c0978a2149885f82

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

CONFIGURE_ARGS+= \
	--disable-sasl

include $(INCLUDE_DIR)/package.mk

define Package/libmemcached
  SECTION:=libs
  CATEGORY:=Libraries
  URL:=http://libmemcached.org/libMemcached.html
  TITLE:=libmemcached
  DEPENDS:=$(CXX_DEPENDS) libsasl2
endef

define Package/libmemcached/description
libMemcached is designed to provide the greatest number
of options to use Memcached.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/libhashkit/
	$(INSTALL_DIR) $(1)/usr/include/libhashkit-1.0/
	$(INSTALL_DIR) $(1)/usr/include/libmemcached/
	$(INSTALL_DIR) $(1)/usr/include/libmemcached-1.0/
	$(INSTALL_DIR) $(1)/usr/include/libmemcached-1.0/struct/
	$(INSTALL_DIR) $(1)/usr/include/libmemcached-1.0/types/
	$(INSTALL_DIR) $(1)/usr/include/libmemcachedutil-1.0/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libhashkit/* $(1)/usr/include/libhashkit/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libhashkit-1.0/* $(1)/usr/include/libhashkit-1.0/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libmemcached/* $(1)/usr/include/libmemcached/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libmemcached-1.0/*.h $(1)/usr/include/libmemcached-1.0/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libmemcached-1.0/struct/* $(1)/usr/include/libmemcached-1.0/struct/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libmemcached-1.0/types/* $(1)/usr/include/libmemcached-1.0/types/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libmemcachedutil-1.0/* $(1)/usr/include/libmemcachedutil-1.0/

	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.{so*,a,la} $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/* $(1)/usr/lib/pkgconfig/
endef

define Package/libmemcached/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmemcached))
