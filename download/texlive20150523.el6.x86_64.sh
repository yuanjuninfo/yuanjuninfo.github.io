#!/bin/bash
# YUAN, Jun
# 2015-06-25
# texlive20150523.el6.x86_64.sh

if [[ ${UID} = "0" ]];then
echo -e "Need to be root [\e[1;32m OK \e[0m]"
else
echo -e "Need to be root [\e[1;31m Failed \e[0m]"
exit 1
fi

if [[ -e texlive20150523.el6.x86_64.sh ]];then
echo -e "texlive20150523.el6.x86_64.sh in the pwd [\e[1;32m OK \e[0m]"
else
echo -e "texlive20150523.el6.x86_64.sh in the pwd [\e[1;31m Failed \e[0m]"
exit 1
fi

if [[ -e texlive2015-20150523.iso ]];then
echo -e "texlive2015-20150523.iso and texlive20150523.el6.x86_64.sh in the same dir  [\e[1;32m OK \e[0m]"
else
echo -e "texlive2015-20150523.iso and texlive20150523.el6.x86_64.sh in the same dir [\e[1;31m Failed \e[0m]"
exit 1
fi

if [[ $(md5sum texlive2015-20150523.iso) = "52a19aa813a25d51cca450d878b103c4  texlive2015-20150523.iso" ]];then
echo -e "texlive2015-20150523.iso md5 checked [\e[1;32m OK \e[0m ]"
else
echo -e "texlive2015-20150523.iso md5 checked [\e[1;31m Failed \e[0m]"
exit 1
fi

mount -o loop texlive2015-20150523.iso /mnt/
cd /mnt/
echo -e "I" | perl install-tl
cd /
umount /mnt/
cat >> /etc/profile <<eof

# TeX Live 2015
export PATH=\$PATH:/usr/local/texlive/2015/bin/x86_64-linux
export MANPATH=\$MANPATH:/usr/local/texlive/2015/texmf-dist/doc/man
export INFOPATH=\$INFOPATH:/usr/local/texlive/2015/texmf-dist/doc/info
eof

cd /usr/local/texlive/2015/texmf-var/fonts/conf
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
