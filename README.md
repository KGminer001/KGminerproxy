[homeicon]: https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/home-en.png
[rtlogicon]: https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/rt-log.png
[nbminerproxyv3.zip]: https://github.com/tiancao2022/NBMinerProxy/releases/download/10.1.0/nbminerproxyv3windows.zip
[简体中文]: https://github.com/tiancao2022/NBMinerProxy/blob/master/readmes/zh.md
[randlogin]: https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/randlogin.png

<p align="center"><a  target="_blank" rel="noopener noreferrer"><img width="300" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/logo-1.png" alt="Vue logo"></a></p>
<p align="center">
  <a>
    <img src="https://img.shields.io/badge/Release-10.1.0-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Last_Update-2023 03 09-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Language-GoLang-green.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="travis">
  </a>
  
</p>
  <div align="center">
<h2>
    <p>⚡ 固定作者开发费用抽水千分之2,纯转发不抽水<p>
</h2>
</div>

# KGMinerProxy

支持: BTC、LTC、BCH、KASPA、ETC、SC、ZEC、RVN、CFX、ETHF、ETHW、BEAM、ERGO、BTG、AE、FLUX、FIRO、NEOXA、XMR、GRIN、KDA、DASH、CKB、ZEN、NEXA、HNS、等多个币种抽水，不爆内存，体验拉满，4000 台无压力不崩溃，精确到单台设备的 24 小时数据统计、自定义隧道推送工具等强大功能.

## 服务端软件安装

### 1.Linux 系统一键安装脚本(支持 Ubuntu、CentOS...)

<p>root用户直接执行以下命令, 根据提示选择对应功能即可。系统采用随机端口用户名和密码，启动的时候请注意控制台的打印，务必记住初始账号密码，进入软件可自定义修改。</p>

```
bash <(curl -s -L https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/install/kg.sh)
```

<p><a target="_blank" rel="noopener noreferrer"><img width="900" height="220" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/sjdk.png"></a></p>

### 2.Windows 软件下载(推荐安装 win10、win7 系统)

- 服务端隧道加密 windows 服务端下载
  [服务端 windows 软件](https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/windowsstart/kgminerproxywindows-v1.0.0.7z)

## 客户端-本地加密隧道

- Windows 客户端 MultiEnc 下载 [本地加密隧道\_V1.0.0](https://github.com/KGminer001/KGminerproxy/main/windowsstart/MultiEncwindows.zip)

## NBMinerProxy 部署模式

<p><a target="_blank" rel="noopener noreferrer"><img width="1000" height="180" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/TollSys4.jpg"></a></p>

## 部署模式解释

如果使用部署模式 1：该模式矿机直连服务端代理，无需客户端代理，链路如下所示

矿机->运营商->服务端代理(香港云主机)->矿池

如果使用部署模式 2：该模式每台矿机上安装客户端代理，然后矿机连客户端代理，链路如下所示

矿机->客户端代理(本地局域网)->运营商->服务端代理(香港云主机)->矿池

如果使用部署模式 3：该模式在本地局域网随便找一台机器，然后运行客户端代理，局域网上所有机器连这台安装了客户端代理的机器，然后客户端代理连服务端代理，链路如下所示

矿机->客户端代理(本地局域网)->运营商->服务端代理(香港云主机)->矿池

## 推荐服务器配置

<p><a target="_blank" rel="noopener noreferrer"><img width="700" height="250" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/fwqpz.png"></a></p>

## 更新日志

1.0.1

- 1.调整 UI 界面优化 UI 界面
- 2.优化浏览器加载缓存机制
- 3.上线 MultiEnc 本地加密客户端

  1.0.0

- 1.转发抽水基于 Golang 技术栈(高性能框架)+C 技术开发，WEB 服务基于 VUE 技术开发
- 2.安全稳定：客户端+服务端模式(也可单独服务端模式)，客户端加密混淆、服务端解密解混淆
- 3.全币种支持加密，全币种支持抽水(ETH/ETC/BTC/BCH/LTC/ERG/BSV/XMR 等)
- 4.性能强劲，CPU 占用低，可以自定义抽水比例，WEB 管理简洁清晰
- 5.开箱即用：All-In-One 打包，一键搭建运行，支持 Liunx Windows 多平台运行

## 特色

- 支持 Windows & Linux.
- 日志系统.
  - 矿机实时日志.`(模拟矿工内核显示的日志可以分析矿机有效无效份额提交延迟信息等)`
  - 矿机历史日志. `(算力日志, 上线离线日志, 抽水日志等)`
  - 系统日志
- 钱包.`(支持接入第三方API显示历史算力曲线和收益数据等)`
  - 支持 鱼池
  - 支持 币印
  - 支持 微比特
  - 支持 蚂蚁池
  - 支持 E 池
- 曲线
  - 单个矿机的历史算力曲线统计
  - 份额曲线. `(抽水份额 矿机总份额 矿工份额 1小时份额 24小时份额)`
  - 延迟历史曲线.
  - 总算力曲线.

## ⚠️ 常见问题

- 软件安装失败原因

  - 如果出现 permission denied 说明当前你不是 root 权限需要进去 root 权限 debian，unbantu，执行 su 命令 输入密码即可

- 软件安装成功浏览器打不开

  - 这种问题一般是端口没有开放，如果你购买的云服务器比如阿里等需要首先到云服务器后台开放端口安全组，使用什么端口就开放什么端口，也可以全部开放范围 0-65535.然后如果还是连接不上，且系统是 linux 的话还需要开放服务器的端口。服务器可以直接关闭防火墙。使用 ufw disable(debian 和 unbantu 系统)。

- 抽水转换率问题

  - 由于抽水转换率根据份额和难度动态计算，可能开机时会很大不用担心，时间一长会接近你设置的值，可能也会小于你设置的值，但总体来说会接近你设置的值，实际情况还是看你抽水矿池的算力
    芯片机抽水转换率统计会比显卡慢一些通常要运行 24 小时后会接近你设置的值。时间还是以矿池为准

- 芯片机算力的问题
  - 由于芯片机器不提交算力，nbminerproxy 是根据难度动态计算，10 分钟计算一次所以芯片机要等 10 分钟后才能显示，算力只做参考具体以矿池为准
- 本地矿机已经连接上了但是后台不显示
  - nbminerproxy 需要矿机成功提交一次有效的份额才会显示，请等待矿机提交有效的份额
- 芯片机器问题
  - 程序的端口会自动判断是显卡机器还是芯片机器所以无效单独配置
    A11 矿机抽水最好是抽到相同的矿池，不同的矿池可能会出现无效，主要还是要看固件是否支持 set_exnaoce 方法(动态修改随机数)，保守做法抽到同一个矿池
    奶牛、茉莉、亚米等矿机可抽任意矿池
    \*\*自己定义目标矿池的问题
  - nbminerproxy 支持自定义端口，有小伙伴经常问到为什么只能下拉选择不能自己输入，其实输入和下拉是做到一起的，鼠标选中后直接输入回车确定即可
- 首页不显示数据但端口界面可以显示数据的问题
  - 先别急，运行 10 分钟后看，这个问题出现的概率很小，除非服务器获取的时间出现问题，常见使用了国际服务器，一般做法重启一下软件(设置界面)。重启后如果有些数据还是没有显示，那么不用担心先不用管，运行超过>=8 小时（有可能是 24 小时）后会自动恢复正常，因为中国时间和国际时间的差值影响的、
- 不开抽水功能是否真的作者不抽水
  - 这个问题其实容易测试，可以用纯转发的软件测试对比算力。

## 联系我们

- 邮件: KGMinerProxy@gmail.com
- [飞机群](https://t.me/kgminerproxy)

<h2>免责声明</h2>
<p>法律不支持的地区此程序无法使用，请自觉遵守当地相关政策，使用此软件造成的法律问题，一概与软件作者无关。</p>
