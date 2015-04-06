\ProvidesClass{zhbea}[2014/09/22 v0.0 zhbea document class]

\LoadClass{beamer}

\useinnertheme{rounded}
\useoutertheme{shadow}
\usecolortheme{beaver}
\usefonttheme{default}

\RequirePackage[UTF8,nofonts,hyperref,fntef,noindent]{ctexcap}

%==========中文字体==========%
\setCJKmainfont[BoldFont=FandolHei,ItalicFont=FandolKai,BoldItalicFont=FandolFang]{FandolSong}
\setCJKsansfont{FandolHei}
\setCJKmonofont{FandolFang}
\setCJKfamilyfont{zhsong}{FandolSong}
\setCJKfamilyfont{zhhei}{FandolHei}
\setCJKfamilyfont{zhfs}{FandolFang}
\setCJKfamilyfont{zhkai}{FandolKai}
\providecommand\songti[1]{\CJKfamily{zhsong}#1}
\providecommand\heiti[1]{\CJKfamily{zhhei}#1}
\providecommand\fangsong[1]{\CJKfamily{zhfs}#1}
\providecommand\kaishu[1]{\CJKfamily{zhkai}#1}

%===========浮动控制============%
%\RequirePackage{float}

%=========电子文档信息==========%

%\title{标题}
%\subtitle{小标题}
%\author{作者}
%\institute{机构}
%\date{日期}
%\titlegraphic{\includegraphics[width=2em]{favicon}}
%\subject{主题}
%\keywords{关键词1, 关键词2, 关键词3}

%===========特殊字符============%
%\RequirePackage{pifont,marvosym,manfnt,keystroke,textcomp,
%harmony,ifsym,recycle,cclicenses,phaistos,skull,skak,trfsigns}

%=========脆弱命令保护==========%
%\RequirePackage{cprotect}

%==========标题控制============%
%\RequirePackage{caption}

%========TeX相关标志==========%
%\RequirePackage{mflogo,amsmath,hologo,metalogo,doc}

%==========强调文字============%
%\RequirePackage{ulem}

%==========行距调整============%
%\RequirePackage{setspace}
%\setlength\lineskiplimit{2.625bp}
%\setlength\lineskip{2.625bp}

%==========表格控制============%
%\RequirePackage{booktabs}
%\RequirePackage{multirow}
