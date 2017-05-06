#!/bin/bash
set -e
echo Add QCA Repo
wget https://source.codeaurora.org/quic/qsdk/oss/system/openwrt/plain/include/local-development.mk -P ./include/
sed -i 's|git describe --dirty|git describe|g' ./include/local-development.mk
sed -i 's|$(TOPDIR)/qca/src/$(PKG_NAME)|$(TOPDIR)/package/ssdk/$(PKG_NAME)/src|g' ./include/local-development.mk
echo 'src-git ssdk https://source.codeaurora.org/quic/qsdk/oss/system/feeds/ssdk.git' >> ./feeds.conf.default
# echo 'src-git nsshost https://source.codeaurora.org/quic/qsdk/oss/system/feeds/nss-host.git' >> ./feeds.conf.default
./scripts/feeds update -a
echo Clone QCA SRC
git clone https://source.codeaurora.org/quic/qsdk/oss/lklm/qca-ssdk.git ./feeds/ssdk/qca-ssdk/src -b release/endive_mips
git clone https://source.codeaurora.org/quic/qsdk/oss/ssdk-shell.git ./feeds/ssdk/qca-ssdk-shell/src -b release/endive_mips
# git clone https://source.codeaurora.org/quic/qsdk/oss/lklm/qca-rfs ./feeds/nsshost/qca-rfs/src
mv ./feeds/ssdk ./package/
sed -i '$d' feeds.conf.default
#mkdir -p ./package/nsshost/qca-rfs/
#mv ./feeds/nsshost/qca-rfs/ ./package/nsshost
sed -i 's|+kmod-ipt-extra +kmod-ipt-filter +kmod-ipv6 |+kmod-ipt-extra +kmod-ipt-filter |g' ./package/ssdk/qca-ssdk/Makefile
./scripts/feeds install -a
