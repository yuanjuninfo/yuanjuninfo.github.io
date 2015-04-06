#!/bin/bash
# YUAN, Jun
# 2015-04-04
# texlive20140525.el6.x86_64.sh

if [[ ${UID} = "0" ]];then
echo -e "Need to be root [\e[1;32m OK \e[0m]"
else
echo -e "Need to be root [\e[1;31m Failed \e[0m]"
exit 1
fi

if [[ -e texlive20140525.el6.x86_64.sh ]];then
echo -e "texlive20140525.el6.x86_64.sh in the pwd [\e[1;32m OK \e[0m]"
else
echo -e "texlive20140525.el6.x86_64.sh in the pwd [\e[1;31m Failed \e[0m]"
exit 1
fi

if [[ -e texlive2014-20140525.iso ]];then
echo -e "texlive2014-20140525.iso and texlive20140525.el6.x86_64.sh in the same dir  [\e[1;32m OK \e[0m]"
else
echo -e "texlive2014-20140525.iso and texlive20140525.el6.x86_64.sh in the same dir [\e[1;31m Failed \e[0m]"
exit 1
fi

if [[ $(md5sum texlive2014-20140525.iso) = "265fe061aaac6a9e39aa84384fb0b486  texlive2014-20140525.iso" ]];then
echo -e "texlive2014-20140525.iso md5 checked [\e[1;32m OK \e[0m ]"
else
echo -e "texlive2014-20140525.iso md5 checked [\e[1;31m Failed \e[0m]"
exit 1
fi

mount -o loop texlive2014-20140525.iso /mnt/
cd /mnt/
echo -e "I" | perl install-tl
cd /
umount /mnt/
cat >> /etc/profile <<eof

# TeX Live 2014
export PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-linux
export MANPATH=/usr/local/texlive/2014/texmf-dist/doc/man
export INFOPATH=/usr/local/texlive/2014/texmf-dist/doc/info
eof

cd /usr/local/texlive/2014/texmf-var/fonts/conf
cp texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive.conf
fc-cache -fsv
fc-list :lang=zh -f "%{family}\n"

echo -e "\e[1;31m reboot of this system now \e[0m y/n"
read -n 1 -t 10 rebootinfo
if [[ ${rebootinfo} = "y" ]];then
reboot
exit 0
else
exit 0
fi
