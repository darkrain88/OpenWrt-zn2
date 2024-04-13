#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 更改默认 Shell 为 zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# TTYD 免登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config


# zerotier
git clone --depth=1 https://github.com/zhengmz/luci-app-zerotier.git feeds/luci/applications/luci-app-zerotier

# ddnsgo
git clone https://github.com/sirpdboy/luci-app-ddns-go.git feeds/luci/applications/ddns-go

# sms-tool

git clone https://github.com/4IceG/luci-app-sms-tool.git  feeds/luci/applications/luci-app-sms-tool

git clone https://github.com/darkrain88/luci-app-sms-tool

git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2 package/luci-app-passwall2
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome


# MosDNS
git clone --depth=1 https://github.com/sbwml/luci-app-mosdns feeds/luci/applications/luci-app-mosdns

# Adguardhome
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome feeds/luci/applications/luci-app-adguardhome
# Alist
git clone --depth=1 https://github.com/sbwml/luci-app-alist package/luci-app-alist



./scripts/feeds update -a
./scripts/feeds install -a
