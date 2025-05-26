#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/messense/aliyundrive-webdav package/messense

#git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter

git clone https://github.com/padavanonly/immortalwrt-mt798x -b openwrt-21.02 ../padavanonly

rm -r package/mtk/applications/luci-app-eqos-mtk
cp -ar ../padavanonly/package/mtk/applications/luci-app-eqos-mtk package/mtk/applications/

# rm -r package/mtk/drivers
# cp -ar ../hanwckf/package/mtk/drivers package/mtk/

# rm -r package/mtk/applications/datconf
# cp -ar ../hanwckf/package/mtk/applications/datconf package/mtk/applications/

# rm -r package/mtk/applications/mtwifi-cfg
# cp -ar ../hanwckf/package/mtk/applications/mtwifi-cfg package/mtk/applications/

# rm -r package/mtk/applications/luci-app-mtwifi-cfg
# cp -ar ../hanwckf/package/mtk/applications/luci-app-mtwifi-cfg package/mtk/applications/

# rm -r package/mtk/applications/mtk-smp
# cp -ar ../hanwckf/package/mtk/applications/mtk-smp package/mtk/applications/
