#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i "/helloworld/d"   feeds.conf.default
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git;main' >>feeds.conf.default
echo "src-link clash  package/openwrt-clash" >> feeds.conf.default
echo "src-link simpleclash package/luci-app-simple-clash" >> feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
# echo 'src-git jerryk https://github.com/jerrykuku/openwrt-package' >> feeds.conf.default
# echo 'src-git dockerman https://github.com/lisaac/luci-app-dockerman.git' >> feeds.conf.default
# echo 'src-git opentopd https://github.com/sirpdboy/sirpdboy-package' >> feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

./scripts/feeds update clash
./scripts/feeds install -a -f -p clash
./scripts/feeds update simpleclash
./scripts/feeds install -a -f -p simpleclash


# Lienol/openwrt-package
# sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default
