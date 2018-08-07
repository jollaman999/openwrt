#
# Copyright (C) 2018 jollaman999
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PECL_NAME:=apcu
PECL_LONGNAME:=APC User Caching

PKG_VERSION:=5.1.12
PKG_RELEASE:=1
PKG_HASH:=4126f771cdcd8cc32e2ad024bae5b25611b28e6077fdbff8efe28ce55306797a

PKG_NAME:=php7-pecl-apcu
PKG_SOURCE:=$(PECL_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=http://pecl.php.net/get/

PKG_MAINTAINER:=Joe Watkins <pthreads@pthreads.org>

PKG_LICENSE:=PHPv3.01
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/pecl-php7/$(PECL_NAME)-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(TOPDIR)/feeds/packages/lang/php7/pecl.mk

CONFIGURE_ARGS+= --enable-apcu

$(eval $(call PECLPackage,$(PECL_NAME),$(PECL_LONGNAME)))
$(eval $(call BuildPackage,$(PKG_NAME)))
