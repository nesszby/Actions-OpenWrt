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
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate
# Modify default theme
sed -i 's/+luci-theme-bootstrap/+luci-theme-argon/g' feeds/luci/collections/luci/Makefile
# Modify default password
#sed -i 's/root:.*/root:$1$c.HkM.0F$wmPKu7xbctli1iHA1Crrg.:18862:0:99999:7:::/g' package/base-files/files/etc/shadow
# Modify other ipk
rm -rf package/lean/luci-theme-argon
git clone https://github.com/Django9264/luci-app-tencentddns package/luci-app-tencentddns
git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
# git clone https://github.com/Django9264/luci-theme-argon package/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git


