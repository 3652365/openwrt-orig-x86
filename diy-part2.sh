#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.182/g' package/base-files/files/bin/config_generate
#git clone https://github.com/pymumu/luci-app-smartdns.git feeds/packages/net/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns.git luci/applications/openwrt-smartdns
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/tt/openwrt-passwall
#git clone https://github.com/sirpdboy/luci-app-netdata.git package/tt/luci-app-netdata
#git clone https://github.com/netdata/netdata.git package/tt/netdata
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/tt/luci-app-adguardhome
#git clone https://github.com/AdguardTeam/AdGuardHome.git package/tt/AdGuardHome
mkdir -p package/tt/luci-app-openclash
cd package/tt/luci-app-openclash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull --depth 1 origin master
git branch --set-upstream-to=origin/master master
