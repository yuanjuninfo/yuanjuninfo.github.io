\ProvidesClass{zhart}[2014/08/10 v0.2 zhart document class]

\LoadClass[UTF8,nofonts,twoside,a4paper,hyperref,fntef]{ctexart}

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

%=========电子文档链接==========%
%\hypersetup{
%    colorlinks=true,
%    linkcolor=black,
%    citecolor=black,
%    filecolor=black,
%    urlcolor=black,
%    bookmarks=true,
%    bookmarksopen=true,
%    bookmarksnumbered=true,
%    pdfstartview=FitH,
%    pdftitle={txt 文档类说明},
%    pdfauthor={袁俊<cnilnhf@gmail.com>},
%    pdfsubject={关于txt文档类的详细使用说明},
%    pdfkeywords={LaTeX; Linux; 中文; 字体; 文档类},
%}

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
