[homeicon]: https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/home-en.png
[rtlogicon]: https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/rt-log.png
[简体中文]: https://github.com/KGminer001/KGminerproxy/blob/master/readmes/zh.md
[randlogin]: https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/randlogin.png

<p align="center"><a  target="_blank" rel="noopener noreferrer"><img width="300" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/logo-1.png" alt="Vue logo"></a></p>
<p align="center">
  <a href="https://kgminer.gitbook.io/kgminer-docs">
    <img src="https://img.shields.io/badge/教程网站-❤️-green.svg" alt="travis">
  </a>
  <a href="https://t.me/kgminerproxy">
    <img src="https://img.shields.io/badge/加入聊天-🔥-blue.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/软件版本-1.0.1-orgin.svg" alt="travis">
  </a>
    <a>
    <img src="https://img.shields.io/badge/开发语言-GoLang-green.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Last_Update-2024 11 20-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="travis">
  </a>
    <a>
    <img src="https://img.shields.io/badge/stars-⭐️200-blue.svg" alt="travis">
  </a>

</p>
  <div align="center">
<h2>
    <p>⚡ 固定作者开发费用抽水千分之1.8,纯转发不抽水⚡<p>
</h2>
</div>

# KGMinerProxy

支持: BTC、LTC、BCH、KASPA、ETC、SC、ZEC、RVN、CFX、ETHF、ETHW、BEAM、ERGO、BTG、AE、FLUX、FIRO、NEOXA、XMR、GRIN、KDA、DASH、CKB、ZEN、NEXA、HNS、等多个币种抽水，不爆内存，体验拉满，4000 台无压力不崩溃，精确到单台设备的 24 小时数据统计、自定义隧道推送工具等强大功能.

<p align="center"><a  target="_blank" rel="noopener noreferrer"><img width="800" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/home-en.png" alt="Vue logo"></a></p>
<p align="center">

## ⭐️ 服务端软件安装

### 1.Linux 系统一键安装脚本(支持 debian 8+ / ubuntu 18+ / 等)

- root 用户直接执行以下命令, 根据提示选择对应功能即可。系统采用随机端口用户名和密码，启动的时候请注意控制台的打印，务必记住初始账号密码，进入软件可自定义修改。

```
bash <(curl -s -L https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/install/kg.sh)
```

<p><a target="_blank" rel="noopener noreferrer"><img width="900" height="220" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/sjdk.png"></a></p>

### 2.Windows 系统安装部署(推荐安装 win10、win7 系统)

- Windows 服务端 KGminerproxy 软件下载[服务端 windows 软件](https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/windowsstart/kgminerproxywindows-v1.0.1.zip)

## ⭐️ 客户端-本地加密隧道

- Windows 客户端 MultiEnc 软件下载 [本地加密隧道\_V1.0.0](https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/windowsstart/MultiEncwindows.zip)

## ⭐️ 服务器配置选择

注:服务器的配置要求中 CPU 核心数量以及内存的配置并不用太高，反而带宽过窄会严重影响服务器的运行。

| 带机量 X             | CPU 核心数 | 内存大小 | 流量带宽 |
| -------------------- | ---------- | -------- | -------- |
| X ＜ 250 台          | 1 核心     | 1G       | 2Mps     |
| 250 ＜ X ＜ 500 台   | 1 核心     | 2G       | 4Mps     |
| 500 ＜ X ＜ 1000 台  | 2 核心     | 2G       | 10Mps    |
| 1000 ＜ X ＜ 2000 台 | 2 核心     | 4G       | 50Mps    |

## ⭐️ 版本日志

V1.0.3

- 1.修复本地加密下载 MultiEncConfig 配置文件数据为空的 BUG

V1.0.2

- 1.调整抽水机制，抽水曲线更加平衡
- 2.优化软件响应速度

V1.0.1

- 1.调整 UI 界面并优化
- 2.优化浏览器加载缓存机制
- 3.上线 MultiEnc 本地加密客户端

V1.0.0

- 1.转发抽水基于 Golang 技术栈(高性能框架)+C 技术开发，WEB 服务基于 VUE 技术开发
- 2.安全稳定：客户端+服务端模式(也可单独服务端模式)，客户端加密混淆、服务端解密解混淆
- 3.全币种支持加密，全币种支持抽水(ETH/ETC/BTC/BCH/LTC/ERG/BSV/XMR 等)
- 4.性能强劲，CPU 占用低，可以自定义抽水比例，WEB 管理简洁清晰
- 5.开箱即用：All-In-One 打包，一键搭建运行，支持 Liunx Windows 多平台运行

## ⭐️ 特色功能

- 多平台系统支持 Windows & Linux.

- 数据统计.

  - 矿机算力实时统计.`(模拟矿工内核显示的日志可以分析矿机有效无效份额提交延迟信息等)`
  - 矿机数量动态显示. `(不同机密方式矿机数量动态显示)`

- 本地加密系统.`(支持本地数据加密，独有的MultiEnc加密更安全)`

- 通知系统.`(实时关注服务器以及客户矿机运行状态，已邮件形式推送给管理者，方便解决处理)`

- 自定义抽水. `(支持设置指定客户抽水份额，抽水更灵活)`

- 屏蔽内核抽水. `(支持屏蔽内核作者抽水钱包，收益最大化)`

## ⭐️ 版本定制说明

1. 加入聊天群组 https://t.me/kgminerproxy

2. 联系群主或管理员即可免费定制。

## ⚠️ 常见问题

- Linux 系统软件安装失败原因

  - 如果出现 permission denied 说明当前你不是 root 权限需要进去 root 权限 debian，unbantu，执行 su 命令 输入密码即可

- 软件安装成功浏览器打不开

  - 这种问题一般是端口没有开放，如果你购买的云服务器比如阿里等需要首先到云服务器后台开放端口安全组，使用什么端口就开放什么端口，也可以全部开放范围 0-65535。

- 抽水转换率问题

  - 因为抽水转换率根据份额和难度动态计算，可能开机时会很大不用担心，时间一长会接近你设置的值，可能也会小于你设置的值，但总体来说会接近你设置的值，实际情况还是看你抽水矿池的算力
    芯片机抽水转换率统计会比显卡慢一些通常要运行 24 小时后会接近你设置的值。时间还是以矿池为准。

- 芯片机算力的问题
  - 由于芯片机器不提交算力，kgminerproxy 是根据难度动态计算，10 分钟计算一次所以芯片机要等 10 分钟后才能显示，算力只做参考具体以矿池为准
- 本地矿机已经连接上了但是后台不显示
- 不开抽水功能是否真的作者不抽水
  - 这个问题其实容易测试，可以用纯转发的软件测试对比算力。

## 联系我们

- 邮件: KGMinerProxy@gmail.com
- [飞机群](https://t.me/kgminerproxy)

<h2>免责声明</h2>
<p>法律不支持的地区此程序无法使用，请自觉遵守当地相关政策，使用此软件造成的法律问题，一概与软件作者无关。</p>
