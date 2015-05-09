#!/bin/bash
# YUAN, Jun
# 2015-05-09
# conf_base.el6.x86_64.sh

if [[ ${UID} = "0" ]];then
echo -e "Need to be root [\e[1;32m OK \e[0m]"
else
echo -e "Need to be root [\e[1;31m Failed \e[0m]"
exit 1
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
alias l='ls -1 --color=auto'
eof
fi
