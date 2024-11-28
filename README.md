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

## 服务端-Linux 一键工具箱

<p>root用户直接执行以下命令, 根据提示选择对应功能即可。系统采用随机端口用户名和密码，启动的时候请注意控制台的打印，务必记住初始账号密码，进入软件可自定义修改。</p>

```
bash <(curl -s -L https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/install/kg.sh)
```

<p><a target="_blank" rel="noopener noreferrer"><img width="900" height="200" src="https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/image/sjdk.png"></a></p>

## 服务端-Windows 软件下载

- 服务端隧道加密 windows 服务端下载
  [服务端 windows 软件](https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/nbminerproxyv3windows.zip)

## 客户端-本地加密隧道

- 国际网络 一键安装脚本(linux amd64 架构)

```shell
bash <(curl -s -L https://raw.githubusercontent.com/tiancao2022/SSLMIX/master/install_zh.sh) https://raw.githubusercontent.com/tiancao2022/SSLMIX/master ssmixlinux
```

- 国内网络 一键安装脚本(linux amd64 架构)

```shell
bash <(curl -s -L https://cdn.jsdelivr.net/gh/tiancao2022/SSLMIX/install_zh.sh) https://cdn.jsdelivr.net/gh/tiancao2022/SSLMIX@master ssmixlinux
```

- 本地端隧道加密 windows 客户端下载 [本地加密隧道\_V1.4.5](https://github.com/tiancao2022/NBMinerProxy/blob/master/nbminerproxyv3windows_client1.45.zip)

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

1.2.3

- 1.增加新币种 IRON
- 2.优化抽水转化率显示提升各币种抽水转换率
- 3.优化心动 A11 矿机的抽水解决在挖矿账户中会显示客户矿机名字的 BUG(抽水高级参数加-skip-special=innominer)

  1.2.2

- 1.增加新币种 ZIL,ETHW_ETHF_ZIL,DCRN、RXD
- 2.修改 ETC,ETHW,ETF,ETC_ZIL 鱼池大比例抽水无损
- 3.针对鱼池 ssl 连接的问题(鱼池 ssl 证书过期了没有更换),连接时加入 sslip://前缀,其他矿池请使用常规的 ssl://方式
- 4.优化抽水比例显示过大
- 5.增加矿机的实时算力计算与否可以通过用户设置默认关闭
- 6.增加纯转发支持 ssl、sslmix 协议

  1.2.1

- 1.增加 SC 币种
- 2.增加双挖 ETC/ZIL ETHF 和 ETHW 同样使用
- 3.矿机界面新功能增加添加抽水和用户矿机得无效无效抽水日志
- 4.标题栏可选择搜索
- 5.端口界面优化
- 6.隧道加密自动地址改为用户填写得 API 地址为主 IP

  1.2.0

- 1.增加抽水时补偿登录用时
- 2.修改所有币种抽水用时算法统一
- 3.修改特殊矿机无法计算抽水份额的问题
- 4.LTC 金贝 BUG 修改
- 5.解决纯转发导致程序重启的问题

  1.1.9

- 1.解决 10.0.2 和 10.0.3 版本一些币种抽水异常的问题（noce 值改错了）
- 2.解决隧道加密数据量太大导致无法加载配置的 BUG
- 3.修改一些币种可能出现无法抽水的 BUG 建议更新

  1.1.8

- 1.NEXA DNX HNS BCH ZEN DNX 币种
- 2.记录错误日志自动生成记录提示
- 3.记录每个抽水账户的份额难度延迟等
- 4.增加了同矿池下选择 viabtc 优化抽水原理是作者和用户抽水使用同一个矿池进行抽水
- 5.端口界面连接日志
- 6.隧道加密增加一键获取已经配置的代理信息
- 7.APIKAY 功能
- 8.首页显示日志条数提醒
- 9.首页显示实时网速

  1.1.7

- 优化:
- 1.端口界面 UI 优化
- 2.日志界面 UI 优化
- 3.KDA CKB BUG BUG 算力显示抽水 BUG 优化
- 修改:
- 1.矿工界面展开图标抽水转换率显示 BUG 修改
- 2.修改了矿机日志查看有时候查询到的矿机信息不确定的 BUG
- 3.矿机搜索可以直接输入不存在的信息
- 4.登陆界面有时无法登陆的 BUG 修改

  1.1.5

- 1.增加单个矿机 UI 界面显示历史算力抽水份额
- 2.增肌单个矿机实时日志系统(可实时显示矿机上报份额抽水份额等帮助分析类似挖矿内核)
- 3.增加单个矿机历史日志显示
- 4.增加单个旷工页面显示当个旷工的历史信息
- 5.增加抽水历史统计曲线帮助分析抽水份额
- 6.增加首页 SSH 远程访问功能
- 7.增加通知功能 email 和 server 酱通知核心事件如矿机掉线通知等
- 8.增加二级密码 IP 白名单功能
- 9.增加钱包添加功能可连接第三方矿池显示历史曲线和收益等数据
- 10.增加 CKB，DASH，KDA 币种
- 11.调整 UI 界面优化 UI 界面

  1.0.0

- 1.V1 版本大更新后面出更新说明 临时上线解决安全问题 UI 还有 10%没有完成 用户先更新

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
