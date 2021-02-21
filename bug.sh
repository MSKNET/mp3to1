#!/bin/sh
if [ "$1" = "" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |         2021春节更新Enjoy  it !            | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
echo -e "\e[1;33m  bash bug.sh 119X/119D/119bak/120X/120D/120bak    \e[0m"
fi

if [ "$1" = "119X" -o "$1" = "120X" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |            2021春节更新Enjoy  it !            | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/120/120.tar.gz
tar -xzvf 120.tar.gz  > /dev/null 2>&1
chmod 755 /root/rc.local
chmod 755 /root/ledfan.sh
mv -f /root/postgresql.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/scemd.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/poweroff120.conf /etc/init/poweroff.conf
mv -f /root/rc.local /etc/
mv -f /root/ledfan.sh /etc/
mv -f /root/hosts /etc/
rm -f /root/120.tar.gz
rm -f /root/poweroff119.conf
rm -f /root/poweroff.conf
rm -f /root/poweroff.mtd
rm -rf /var/log/*
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/571.html    \e[0m"
rm -f /root/bug.sh
fi
fi

if [ "$1" = "119D" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |            2021春节更新Enjoy  it !            | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/120/120.tar.gz
tar -xzvf 120.tar.gz  > /dev/null 2>&1
chmod 755 /root/rc.local
chmod 755 /root/ledfan.sh
mv -f /root/postgresql.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/scemd.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/poweroff119.conf /etc/init/poweroff.conf
mv -f /root/poweroff.mtd /etc/
mv -f /root/rc.local /etc/
mv -f /root/ledfan.sh /etc/
mv -f /root/hosts /etc/
rm -f /root/120.tar.gz
rm -f /root/poweroff120.conf
rm -f /root/poweroff.conf
rm -rf /var/log/*
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/571.html    \e[0m"
rm -f /root/bug.sh
fi
fi

if [ "$1" = "120D" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |            2021春节更新Enjoy  it !            | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/120/120.tar.gz
tar -xzvf 120.tar.gz  > /dev/null 2>&1
chmod 755 /root/rc.local
chmod 755 /root/ledfan.sh
mv -f /root/postgresql.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/scemd.conf /etc.defaults/syslog-ng/patterndb.d/
mv -f /root/poweroff.conf /etc/init/
mv -f /root/rc.local /etc/
mv -f /root/ledfan.sh /etc/
mv -f /root/hosts /etc/
rm -f /root/120.tar.gz
rm -f /root/poweroff120.conf
rm -f /root/poweroff119.conf
rm -f /root/poweroff.mtd
rm -rf /var/log/*
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/571.html    \e[0m"
rm -f /root/bug.sh
fi
fi

if [ "$1" = "120bak" -o "$1" = "120bak" ]
then
echo -e "\e[1;33m 买猫盘就选：咪叽数码淘宝店，独家120j引导绝不掉IP  \e[0m"
echo -e "\e[1;31m =================== IMNKS.COM =================== \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m |            2021春节更新Enjoy  it !            | \e[0m"
echo -e "\e[1;31m |                                               | \e[0m"
echo -e "\e[1;31m =============== MIJICN.TAOBAO.COM =============== \e[0m"
sleep 1
ping -W 1 -c 1 110.imnks.com > /dev/null 2>&1
if [ $? -eq 0 ];then
curl -SLO https://imnks.com/mp2020/120/120bak.tar.gz
tar -xzvf 120bak.tar.gz  > /dev/null 2>&1
rm -f /etc/rc.local
rm -f /root/ledfan.sh
mv -f /root/poweroff.conf.bak /etc/init/poweroff.conf
mv -f /root/scemd.conf.bak /etc.defaults/syslog-ng/patterndb.d/scemd.conf
mv -f /root/postgresql.conf.bak /etc.defaults/syslog-ng/patterndb.d/postgresql.conf
rm -f /root/120bak.tar.gz
echo -e "\e[1;33m 成功啦！成功啦！成功啦！立即重启猫盘，Enjoy  it!  \e[0m"
rm -f /root/bug.sh
else
echo -e "\e[1;31m  失败了o(╥﹏╥)o 查看最新教程：imnks.com/571.html    \e[0m"
rm -f /root/bug.sh
fi
fi