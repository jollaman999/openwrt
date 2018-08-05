#
# Copyright (C) 2018 jollaman999
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PECL_NAME:=memcached
PECL_LONGNAME:=PHP extension for interfacing with memcached via libmemcached library

PKG_VERSION:=3.0.4
PKG_RELEASE:=1
PKG_HASH:=561db4c8abdb7c344703a6b7b0ff4f29c2fe0fbacf7b2a2a704d0ed9b1a17d11

PKG_NAME:=php7-pecl-memcached
PKG_SOURCE:=$(PECL_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=http://pecl.php.net/get/

PKG_MAINTAINER:=Andrei Zmievski <andrei@php.net>

PKG_LICENSE:=PHPv3.01
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=libmemcached
PKG_BUILD_DIR:=$(BUILD_DIR)/pecl-php7/$(PECL_NAME)-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(TOPDIR)/feeds/packages/lang/php7/pecl.mk

CONFIGURE_ARGS+= \
	--enable-memcached \
	--disable-memcached-sasl \
	--with-libmemcached-dir="$(STAGING_DIR)/usr"

$(eval $(call PECLPackage,$(PECL_NAME),$(PECL_LONGNAME),+libmemcached,30))
$(eval $(call BuildPackage,$(PKG_NAME)))
