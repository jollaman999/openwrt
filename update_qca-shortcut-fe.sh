#!/bin/bash
set -e
echo Add QCA Repo
wget https://source.codeaurora.org/quic/qsdk/oss/system/openwrt/plain/include/local-development.mk -P ./include/
sed -i 's|git describe --dirty|git describe|g' ./include/local-development.mk
sed -i 's|$(TOPDIR)/qca/src/$(PKG_NAME)|$(TOPDIR)/package/qca/$(PKG_NAME)/src|g' ./include/local-development.mk
# echo 'src-git shortcutfe https://source.codeaurora.org/quic/qsdk/oss/system/feeds/shortcut-fe.git;release/endive_mips' >> ./feeds.conf.default
./scripts/feeds update -a
git clone https://source.codeaurora.org/quic/qsdk/oss/lklm/shortcut-fe.git ./feeds/qca/shortcut-fe/src -b release/endive_mips
mv ./feeds/qca ./package/
sed -i '$d' feeds.conf.default
./scripts/feeds install -a
