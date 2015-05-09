#!/bin/bash
# YUAN, Jun
# 2015-05-09
# install_base.el6.x86_64.sh

if [[ ${UID} = "0" ]];then
echo -e "Need to be root [\e[1;32m OK \e[0m]"
else
echo -e "Need to be root [\e[1;31m Failed \e[0m]"
exit 1
fi

echo -e "[\e[1;32m Install Misc \e[0m] y/n"
read -n 1 -t 5 miscinfo
if [[ ${miscinfo} = "y" || -z ${miscinfo} ]];then
yum install -y gedit gedit-plugins evince nautilus-open-terminal ImageMagick
fi

echo -e "[\e[1;32m Install Development tools \e[0m] y/n"
read -n 1 -t 5 deveinfo
if [[ ${deveinfo} = "y" || -z ${deveinfo} ]];then
yum groupinstall -y "Development tools"
fi

echo -e "[\e[1;32m Update of this system now \e[0m] y/n"
read -n 1 -t 5 updateinfo
if [[ ${updateinfo} = "y" || -z ${updateinfo} ]];then
yum update -y
fi

echo -e "\e[1;31m Reboot of this system now \e[0m y/n"
read -n 1 -t 10 rebootinfo
if [[ ${rebootinfo} = "y" ]];then
reboot
exit 0
else
exit 0
fi
