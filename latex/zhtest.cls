\ProvidesClass{zhtest}[2014/09/14 v1.1 zhtest Template]

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

%==========强调文字==========%
\RequirePackage{ulem}

%==========浮动控制==========%
\RequirePackage{float}

%==========行距调整==========%
\RequirePackage{setspace}
\setlength\lineskiplimit{2.625bp}
\setlength\lineskip{2.625bp}

%==========文档链接==========%
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    filecolor=black,
    urlcolor=black,
    bookmarks=true,
    bookmarksopen=true,
    bookmarksnumbered=true,
    pdfstartview=FitH,
    pdftitle={College Test Template},
    pdfauthor={袁俊<cnilnhf@gmail.com>},
    pdfsubject={LaTeX},
    pdfkeywords={试卷模板},
}

%==========页面尺寸==========%
\RequirePackage{geometry}
\geometry
{
a4paper,
inner=2.3cm,
outer=1.5cm,
top=1.5cm,
bottom=2cm,
paperwidth=18cm,
paperheight=26.5cm,
}

%==========页面格式==========%
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[CO,CE]{第{\thepage}页共{\pageref{LastPage}}页}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%=========装订线设置=========%
\newsavebox{\newgutter}
\newcommand{\putgutter}
{\marginpar
	{\parbox{1cm}
		{\vspace{-1.6cm}
		 \rotatebox[origin=c]{90}
			{\usebox{\newgutter}}}}}
\sbox{\newgutter}
{\parbox{27cm}
{\centerline{\zihao{-4}{学院：}\uline{\hspace*{3.8cm}}{专业班级：}\uline{\hspace*{3.8cm}}{姓名：}\uline{\hspace*{3.8cm}}{学号：}\uline{\hspace*{3.8cm}}}
\vspace{4mm}
{\zihao{-4}\dotfill{}{装}\dotfill{}{订}\dotfill{}{线}\dotfill{}}\\}}

%==========奇数页新建装订线<\gutter>==========%
\newcommand{\gutter}
{\setlength{\marginparsep}{-16cm}
\putgutter}

%==========设置所在学校、考试学年、学期、科目、考试形式、适用专业==========%
\newcommand{\meta}[7]
{
\begin{figure}[H]
\begin{tabular}{p{14cm}}
\centerline{\zihao{2}\textbf{{#1}20\uline{#2}-20\uline{#3}学年第\uline{#4}学期}}\\
\centerline{\zihao{2}\textbf{\uline{《{#5}》}试卷（A卷）}}\\
\end{tabular}
\begin{tabular}{r@{：}l}
\zihao{-4}\textbf{考试形式}&\uline{{#6}}\\
\zihao{-4}\textbf{适用专业}&\uline{{#7}}\\
\end{tabular}
\\
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
\zihao{-4}\textbf{题号}&\textbf{一}&\textbf{二}&\textbf{三}&\textbf{四}&\textbf{五}&\textbf{总分}\\
\hline
\zihao{-4}\textbf{\hspace*{0.5cm}得分\hspace*{0.5cm}}&\hspace*{1.5cm}&\hspace*{1.5cm}&\hspace*{1.5cm}&\hspace*{1.5cm}&\hspace*{1.5cm}&\hspace*{1.5cm}\\
\hline
\end{tabular}
\end{figure}
}

%==========大题目==========%
\newcommand{\head}[1]
{
\begin{figure}[H]
\begin{tabular}{|c|c|}
\hline
\textbf{\zihao{5}{得分}}&\textbf{\zihao{5}{评阅人}}\\
\hline
&\\
\hline
\end{tabular}
\mbox{\textbf{\zihao{-4}{#1}}}
\end{figure}
}

%==========名词解释==========%
\newenvironment{explain}
{\begin{enumerate}}
{\end{enumerate}}
\newcommand{\entry}[2]{
\item {#1}:\\
{#2}}

%==========选择题==========%
\RequirePackage{tabularx}
\renewcommand\intextsep{2pt plus 1pt minus 1pt}

\newenvironment{choice}
{\begin{enumerate}}
{\end{enumerate}}

%%选择项在一行内%%
\newcommand{\oneline}[6]
{
\item ({#1}){#2}
\begin{figure}[H]
\begin{tabularx}{\textwidth}{cXXXX}
\hspace*{1cm}&A.{#3}&B.{#4}&C.{#5}&D.{#6}\\
\end{tabularx}
\end{figure}
}
%%选择项在两行内%%
\newcommand{\twoline}[6]
{
\item ({#1}){#2}
\begin{figure}[H]
\begin{tabularx}{\textwidth}{cXX}
\hspace*{1cm}&A.{#3}&B.{#4}\\
\hspace*{1cm}&C.{#5}&D.{#6}\\
\end{tabularx}
\end{figure}
}
%%选择项在四行内%%
\newcommand{\fourline}[6]
{
\item ({#1}){#2}
\begin{figure}[H]
\begin{tabularx}{\textwidth}{cX}
\hspace*{1cm}&A.{#3}\\
\hspace*{1cm}&B.{#4}\\
\hspace*{1cm}&C.{#5}\\
\hspace*{1cm}&D.{#6}\\
\end{tabularx}
\end{figure}
}

%==========判断题==========%
\newcommand{\mm}[1]{$\mathrm{#1}$}
\newcommand{\true}{\mm{\surd}}
\newcommand{\false}{\mm{\times}}
\newenvironment{judge}
{\begin{enumerate}}
{\end{enumerate}}
\newcommand{\subjudge}[2]
{\item ({#1}) {#2}}
