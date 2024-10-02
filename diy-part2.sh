#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Add a soft source code
git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.205/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/N270wrt/g' package/base-files/files/bin/config_generate
