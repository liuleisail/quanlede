#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.2.2/192.168.2.3/g' package/base-files/files/bin/config_generate
sed -i '5s/#//' feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
