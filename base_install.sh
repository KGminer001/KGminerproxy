#bin

# 发布版本号
apprunname='kgminerproxy'
appinstalname='kgminerproxylinux'-v1.0.6 #软件安装包名称

# 版本号
shell_version='v1.0.0' #脚本版本
version='v1.0.6' #软件版本
uiname=$1-shell #脚本名称
sofname=$1-MPxy #软件名称
wdog=WD$1Run #
installdirName=proxy-$1-miner #安装文件夹名
downloadUrl=https://raw.githubusercontent.com/KGminer001/KGminerproxy/main/$appinstalname.tar.gz #下载路径,必须时tar.gz 压缩包
configIUrl=$2/$3 #核心抽水配置文件
installdir=/etc/$installdirName/ #安装包路径
installfolder=$installdir$wdog #安装的软件路径
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
clearscr='\033c'
str2='backline'
if [[ $str2 == $router_line ]]
then
    echo "特殊线路"
   download_url=$downloadUrl
else
   download_url=$downloadUrl
   router_line='默认'
fi

#检查当前下载的文件收有记录
if [ ! -f "$appinstalname.tar.gz" ]; then
    echo "\n"
else
    rm $appinstalname.tar.gz
fi
#停止老版本
PROCESS=$(ps -ef | grep porttran | grep -v grep | grep -v PPID | awk '{ print $2}')
for i in $PROCESS; do
    echo "Kill the $1 process [ $i ]"
    kill -9 $i
done
PROCESS=$(ps -ef | grep ppexec | grep -v grep | grep -v PPID | awk '{ print $2}')
for i in $PROCESS; do
    echo "Kill the $1 process [ $i ]"
    kill -9 $i
done

OsSupport()
{
    if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
        DISTRO='CentOS'
        PM='yum'
    elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
        DISTRO='RHEL'
        PM='yum'
    elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
        DISTRO='Aliyun'
        PM='yum'
    elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
        DISTRO='Fedora'
        PM='yum'
    elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
        DISTRO='Ubuntu'
        PM='apt'
    elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
        DISTRO='Raspbian'
        PM='apt'
    else
        DISTRO='unknow'
    fi
    echo $DISTRO;
    str1="CentOS,Ubuntu,Debian"
    if [[ $str1 =~ $DISTRO ]]
    then
       # echo support this os system 
       return
    else
       # echo not support this os system pls use CentOS,Ubuntu,Debian
       echo && echo -n -e "${yellow}可能不支持的操作系统，建议使用CentOS或Ubuntu或Debian,回车继续安装,CTRL+C退出: ${plain}" && read temp
    fi
}

change_limit() {
    changeLimit="n"
    if [ $(grep -c "root soft nofile" /etc/security/limits.conf) -eq '0' ]; then
        echo "root soft nofile 65535" >>/etc/security/limits.conf
        echo "* soft nofile 65535" >>/etc/security/limits.conf
        changeLimit="y"
    fi

    if [ $(grep -c "root hard nofile" /etc/security/limits.conf) -eq '0' ]; then
        echo "root hard nofile 65535" >>/etc/security/limits.conf
        echo "* hard nofile 65535" >>/etc/security/limits.conf
        changeLimit="y"
    fi
    if [ $(grep -c "DefaultLimitNOFILE=65535" /etc/systemd/user.conf) -eq '0' ]; then
        echo "DefaultLimitNOFILE=65535" >>/etc/systemd/user.conf
        changeLimit="y"
    fi

    if [ $(grep -c "DefaultLimitNOFILE=65535" /etc/systemd/system.conf) -eq '0' ]; then
        echo "DefaultLimitNOFILE=65535" >>/etc/systemd/system.conf
        changeLimit="y"
    fi

    if [[ "$changeLimit" = "y" ]]; then
        echo "连接数限制已修改为65535,重启服务器后生效"
    else
        echo -n "当前连接数限制："
        ulimit -n
    fi
    before_show_menu
}

check_limit() {
    echo "当前系统连接数："
    ulimit -n
    before_show_menu
}

checkProcess() {
    COUNT=$(ps -ef | grep $1 | grep -v "grep" | wc -l)
    if [ $COUNT -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

killProcess() {
    #停止主程序
    PROCESS=$(ps -ef | grep $sofname|grep -v grep | grep -v PPID | awk '{ print $2}')
    for i in $PROCESS; do
        echo "Kill the $1 process [ $i ]"
        kill -9 $i
    done
}

kill_wdog(){
    #停止看门狗
    PROCESS=$(ps -ef | grep $wdog|grep -v grep | grep -v PPID | awk '{ print $2}')
    for i in $PROCESS; do
        echo "Kill the $1 process [ $i ]"
        kill -9 $i
    done
}

install() {
    OsSupport
    if [ ! -f "$installfolder" ]; then
        wget $download_url
        if [ -f "$appinstalname.tar.gz" ]; then
            tar -zxvf $appinstalname.tar.gz
            cd $appinstalname/
            mkdir $installdirName && chmod 777 $installdirName
            #判断文件夹是否创建成功
            if [ ! -d "$installdirName" ]; then
                echo && echo -n -e "${yellow}安装失败,请重新操作: ${plain}" && read temp
                rm -rf $appinstalname&& rm $appinstalname.tar.gz
                return
            fi
            mv $apprunname $installdirName/$sofname
            sed -i "s/$apprunname/$sofname/g" $apprunname'running.sh'
            mv $apprunname'running.sh' $installdirName/$wdog
            cd $installdirName && chmod +x $wdog && chmod +x $sofname && cd ../
            cp -r $installdirName /etc/ && cd ../
            rm -rf $appinstalname && rm $appinstalname.tar.gz
            if [ ! -f "$installfolder" ]; then
                rm -rf  $installdir
                echo -e "${red}安装时失败，请输入一键安装脚本重新安装"
                return
            fi
            changeLimit="n"
            if [ $(grep -c "root soft nofile" /etc/security/limits.conf) -eq '0' ]; then
                echo "root soft nofile 65535" >>/etc/security/limits.conf
                echo "* soft nofile 65535" >>/etc/security/limits.conf
                changeLimit="y"
            fi
            if [ $(grep -c "root hard nofile" /etc/security/limits.conf) -eq '0' ]; then
                echo "root hard nofile 65535" >>/etc/security/limits.conf
                echo "* hard nofile 65535" >>/etc/security/limits.conf
                changeLimit="y"
            fi
            if [ $(grep -c "DefaultLimitNOFILE=65535" /etc/systemd/user.conf) -eq '0' ]; then
                echo "DefaultLimitNOFILE=65535" >>/etc/systemd/user.conf
                changeLimit="y"
            fi
            if [ $(grep -c "DefaultLimitNOFILE=65535" /etc/systemd/system.conf) -eq '0' ]; then
                echo "DefaultLimitNOFILE=65535" >>/etc/systemd/system.conf
                changeLimit="y"
            fi
            if [[ "$changeLimit" = "y" ]]; then
                echo "连接数限制已修改为65535,重启服务器后生效"
            else
                echo -n "当前连接数限制："
                ulimit -n
            fi
            autorun
            echo && echo -n -e "${yellow}安装完成,按回车启动,CTRL+C退出: ${plain}" && read temp
            start
        else
            echo -e "${red}下载安装包失败，请输入一键安装脚本重新安装"
            rm -rf $$appinstalname && rm $$appinstalname.tar.gz
            return
        fi
    else
        echo -e "${red}转发已经安装,不要重复安装 ${plain}"
        before_show_menu
    fi
}

check_install() {
    if [ ! -f "$installfolder" ]; then
        echo -e "             ${red}<<转发没有安装>> ${plain}"
    else
        echo -e "             ${green}<<转发已经安装>> ${plain}"
    fi
}

before_show_menu() {
    echo && echo -n -e "${yellow}操作完成按回车返回主菜单: ${plain}" && read temp
    show_menu
}

update_app() {
    if [ ! -f "$installfolder" ]; then
        echo -e "${red}转发没有安装,请先安装转发"
        before_show_menu
    fi
    echo && echo -n -e "${yellow}确定更新吗,按回车确定,CTRL+C退出: ${plain}" && read temp
    wget $download_url
    if [ ! -f "$appinstalname.tar.gz" ]; then
        echo -e "${red}下载安装包失败，请输入一键安装脚本重新更新"
        return
    fi
    rm /etc/$installdirName/*.cache
    kill_wdog
    killProcess
    tar -zxvf $appinstalname.tar.gz
    cd $appinstalname/
    mkdir $installdirName && chmod 777 $installdirName
    #判断文件夹是否创建成功
    if [ ! -d "$installdirName" ]; then
        echo && echo -n -e "${yellow}更新失败,请重新操作,按回车返回主菜单: ${plain}" && read temp
        show_menu
    else
        mv $apprunname $installdirName/$sofname
        sed -i "s/$apprunname/$sofname/g" $apprunname'running.sh'
        mv $apprunname'running.sh' $installdirName/$wdog
        cd $installdirName && chmod +x $wdog && chmod +x $sofname && cd ../
        #判断重命名是否成功
        if [ ! -f "$installdirName/$wdog" ]; then
            echo && echo -n -e "${yellow}更新失败,重命名失败,请重新操作: ${plain}" && read temp
            rm -rf $appinstalname && rm $appinstalname.tar.gz
            return
        fi
        cp -r $installdirName /etc/ && cd ../
        rm -rf $appinstalname && rm $appinstalname.tar.gz
        if [ ! -f "$installfolder" ]; then
            echo && echo -n -e "${yellow}更新失败,请程序打开脚本操作"
            rm -rf $appinstalname && rm $appinstalname.tar.gz
            return
        else
            #echo && echo -n -e "${yellow}更新完成,按回车启动,CTRL+C退出: ${plain}" && read temp
            autorun
            start
        fi
    fi
}
uninstall_app() {
    echo && echo -n -e "${yellow}确定卸载吗,按回车确定,CTRL+C退出: ${plain}" && read temp
    kill_wdog
    killProcess
    rm -rf /etc/$installdirName/
    before_show_menu
}
start() {
    if [ ! -f "$installfolder" ]; then
        echo -e "${red}转发没有安装,无法启动 ${plain}"
    else
        checkProcess "$wdog"
        if [ $? -eq 1 ]; then
            echo -e "${red}转发已经启动,不要重复启动 ${plain}"
            before_show_menu
        else
            echo -e "${green}启动中... ${plain}"
            cd $installdir
            sed -i 's/"is_open_general_swap": true/"is_open_general_swap": false/g' localconfig.json
            echo -e ${clearscr}
            setsid ./$wdog -franchisee=$configIUrl &
            sleep 3
        fi
    fi
    before_show_menu
}
stop() {
    echo && echo -n -e "${yellow}确定停止吗,按回车确定,CTRL+C退出: ${plain}" && read temp
    kill_wdog
    killProcess
    before_show_menu
}
autorun() {
    if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
        DISTRO='CentOS'
        PM='yum'
    elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
        DISTRO='RHEL'
        PM='yum'
    elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
        DISTRO='Aliyun'
        PM='yum'
    elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
        DISTRO='Fedora'
        PM='yum'
    elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
        DISTRO='Ubuntu'
        PM='apt'
    elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
        DISTRO='Raspbian'
        PM='apt'
    else
        DISTRO='unknow'
    fi
    str1="Raspbian,Ubuntu,Debian"
    if [[ $str1 =~ $DISTRO ]]
    then
        cd /etc
        rm rc.local
        touch rc.local
        chmod 777 rc.local
        echo "#!/bin/bash" >>rc.local
        echo "#" >>rc.local
        echo "# rc.local" >>rc.local
        echo "#" >>rc.local
        echo "# This script is executed at the end of each multiuser runlevel." >>rc.local
        echo "# Make sure that the script will " #exit 0" on success or any other" >> rc.local
        echo "# value on error." >>rc.local
        echo "#" >>rc.local
        echo "# In order to enable or disable this script just change the execution" >>rc.local
        echo "# bits." >>rc.local
        echo "#" >>rc.local
        echo "# By default this script does nothing." >>rc.local
        echo "#exit 0" >>rc.local
        echo "cd $installdir && setsid ./$wdog -franchisee=$configIUrl &" >>rc.local
        echo "exit 0" >>rc.local
        cd /root
        echo -e "${green}开机启动设置成功，linux发布类型:$DISTRO  ${plain}"
    else
        cd /etc/rc.d/
        rm rc.local
        touch rc.local
        chmod 777 rc.local
        echo "#!/bin/bash" >>rc.local
        echo "cd $installdir && setsid ./$wdog -franchisee=$configIUrl &" >>rc.local
        echo "exit 0" >>rc.local
        cd /root
        echo -e "${green}开机启动设置成功，linux发布类型:$DISTRO  ${plain}"
    fi
}
closeWhiteList(){
    cd $installdir
    sed -i 's/"is_open_white_list_mode": true/"is_open_white_list_mode": false/g' localconfig.json
    echo -e "${green}关闭成功"
}
checkConfigFile(){
    cat /etc/$installdirName/localconfig.json
}
delErrFile(){
    echo "" >/etc/$installdirName/error.log
    echo -e "${green}删除成功${plain}"
}
show_menu() {
    clear
    check_install
    echo -e "
     ${green}$uiname脚本管理界面安装完成(建议使用debian8.*版本内存控制更好)
     ${green}线路:${router_line}
     ${green}脚本版本${shell_version}
     ${green}软件版本${version}
     ${green}安装时linux默认最大连接数据已修改为最大65535(需重启服务器生效)
     ${green}安装时软件已经自动设置开机启动
     ${red}浏览器默认端口用户名和密码全部使用随机生成，启动成功后会在控制台上打印出来请注意${plain}
     ${green}0.${plain} 退出
     ${green}1.${plain} 安装
     ${green}2.${plain} 更新
     ${green}3.${plain} 卸载
     ${green}4.${plain} 启动
     ${green}5.${plain} 停止
     ${green}6.${plain} 查看linux最大连接
     ${green}7.${plain} linux大连接数改为65535(需重启服务器生效)
     ${green}8.${plain} 手动设置开机启动
     ${green}9.${plain} 关闭IP白名单功能(关闭后重新登录即可)
     ${green}10.${plain} 查看配置文件(登录信息等)
     ${green}11.${plain} 删除错误日志
    
   "
    echo && read -p "请输入选择 [0-11]: " num

    case "${num}" in
    0)
        exit 0
        ;;
    1)
        install
        ;;
    2)
        update_app
        ;;
    3)
        uninstall_app
        ;;
    4)
        start
        ;;
    5)
        stop
        ;;
    6)
        check_limit
        ;;
    7)
        change_limit
        ;;
    8)
        autorun
        ;;
    9)
        closeWhiteList
        ;;
    10)
        checkConfigFile
        ;;
    11)
        delErrFile
        ;;    
    *)
        echo -e "${red}请输入正确的数字 [0-11]${plain}"
        ;;
    esac
}
show_menu
