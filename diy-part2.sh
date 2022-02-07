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
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-bootstrap/g' feeds/luci/collections/luci/Makefile
sed -i 's/OpenWrt/iPhone/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/CMCC-A281/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i 's/root::0:0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/g' /etc/shadow
