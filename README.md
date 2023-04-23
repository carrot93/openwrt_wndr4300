# About custom firmware: （关于本固件）

- lan ip: 10.0.0.1
- username/password: root/password
- current kernel version: 5.10.135+
- support Wireguard, virtual ip
- support port bonding,Syndial,Mwnan3
- 包含基础的包，其它包和i18n包可以直接opkg安装。
- 支持Wireguard、Virtual IP
- 支持端口聚合（bonding）、多线多拨（Syndial）、负载均衡（Mwan3）
-  本固件为测试验证版，大概率存在各种问题，请注意更新文档。

# exception handling：（异常状况处理）

- Downgrade: 降级：当刷新固件失败，需要降级固件时，可能遇到降级失败，需要选择一个完备的版本进行刷机。


# Actions-Lean-OpenWrt

- `master`是[Lean's OpenWrt source](https://github.com/coolsnowwolf/lede)编译，分支`Lienol-openwrt`是[Lienol's openwrt source](https://github.com/Lienol/openwrt)编译。  
- 自定义文件 “files 大法”是把你自定义的配置编译到固件里。这样升级或恢复出厂设置都不需要保留配置，缺省值就是自定义的配置。
- 如你现在的network设置编译进固件：首先提取路由固件下的`\etc\config\network` 然后在项目根目录下创建files目录并`push` 到 `\files\etc\config\network `，最后编译出来的固件就是现在设置的network。
- 自定义编译的方法可以搭配使用，自己需要的服务一般不会随意变化，就可以在 `make menuconfig` 选好（新手参考[OpenWrt MenuConfig设置和LuCI插件选项说明](https://mtom.ml/827.html)）后执行 `./scripts/diffconfig.sh > seed.config` 复制一下这个`seed.config`的文本内容到项目根目录的`.config`文件中（建议自命名），这样就不用每次都SSH连接到 Actions生成编译配置，真正一键编译。
- 修改`.github/workflows/build-openwrt.yml`中`.config`为你的自命名###.config文件。
- 另外如果，使用“files 大法”仓库最好设为私有，否则你的配置信息，如宽带账号等会公开在网上。
- 如果需要可以编写多个`workflows`文件对应`###.config`，开启多流程同时编译。
