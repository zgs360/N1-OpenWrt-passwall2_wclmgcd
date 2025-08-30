# 删除所有现有feed
rm -f feeds.conf.default

# 创建新的feeds配置
cat > feeds.conf.default <<EOF
src-git packages https://github.com/openwrt/packages.git;openwrt-23.05
src-git luci https://github.com/openwrt/luci.git;openwrt-23.05
src-git routing https://git.openwrt.org/feed/routing.git;openwrt-23.05
src-git telephony https://github.com/openwrt/telephony.git;openwrt-23.05

# 添加PassWall2和OpenClash依赖
src-git kenzo https://github.com/kenzok8/openwrt-packages.git;main
src-git small https://github.com/kenzok8/small.git;main
EOF
