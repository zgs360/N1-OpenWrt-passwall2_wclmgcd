# Modify some code adaptation
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile
# Add autocore support for armvirt
sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.3/g' package/base-files/files/bin/config_generate

#修改密码
sed -i 's/^root:.*:/root:$1$sKnYlDLr$7fZvROo6z5iKO9FIYGEbf0:18248:0:99999:7:::/g' package/base-files/files/etc/shadow
