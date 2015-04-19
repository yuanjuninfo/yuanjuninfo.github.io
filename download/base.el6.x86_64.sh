#!/bin/bash
# YUAN, Jun
# 2015-3-26
# base.el6.x86_64.sh

if [[ ${UID} = "0" ]];then
echo -e "Need to be root [\e[1;32m OK \e[0m]"
else
echo -e "Need to be root [\e[1;31m Failed \e[0m]"
exit 1
fi

echo -e "[\e[1;32m Install Misc \e[0m] y/n"
read -n 1 -t 5 miscinfo
if [[ ${miscinfo} = "y" || -z ${miscinfo} ]];then
yum install -y gedit gedit-plugins evince nautilus-open-terminal ImageMagick byzanz zsh
fi

echo -e "[\e[1;32m Install Development tools \e[0m] y/n"
read -n 1 -t 5 deveinfo
if [[ ${deveinfo} = "y" || -z ${deveinfo} ]];then
yum groupinstall -y "Development tools"
fi

echo -e "[\e[1;32m To configure /etc/vimrc \e[0m] y/n"
read -n 1 -t 5 vimrcinfo
if [[ ${vimrcinfo} = "y" || -z ${vimrcinfo} ]];then
cat >> /etc/vimrc <<eof
set nocompatible
set number
filetype on
set history=1000
syntax on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set showmatch
set guioptions-=T
set ruler
set nohls
set incsearch
set nobackup
set fileencodings=utf-8,gb
set foldmethod=indent
set foldlevel=100
eof
fi

echo -e "[\e[1;32m To configure /etc/bashrc \e[0m] y/n"
read -n 1 -t 5 bashrcinfo
if [[ ${bashrcinfo} = "y" || -z ${bashrcinfo} ]];then
cat >> /etc/bashrc <<eof
# Alias set up
alias ll='ls -lhF --color=auto'
alias la='ls -alhF --color=auto'
alias l='ls -hF --color=auto'
eof
fi

echo -e "[\e[1;32m Install repo epel \e[0m] y/n"
read -n 1 -t 5 repoinfo
if [[ ${repoinfo} = "y" || -z ${repoinfo} ]];then
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6*.rpm
fi

echo -e "[\e[1;32m Install pandoc \e[0m] y/n"
read -n 1 -t 5 pandocinfo
if [[ ${pandocinfo} = "y" || -z ${pandocinfo} ]];then
yum install pandoc -y
fi

echo -e "[\e[1;32m Install clang \e[0m] y/n"
read -n 1 -t 5 clanginfo
if [[ ${clanginfo} = "y" || -z ${clanginfo} ]];then
yum install clang -y
fi

echo -e "[\e[1;32m Install cli \e[0m] y/n"
read -n 1 -t 5 cliinfo
if [[ ${cliinfo} = "y" || -z ${cliinfo} ]];then
yum install 2048-cli -y
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
