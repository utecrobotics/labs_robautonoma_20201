\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{robotlabs}[2018/08/01 v1.0 LaTeX document class]
\def\baseclass{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

%\usepackage[latin1]{inputenc}
\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage{subfig}
\usepackage{xcolor}
\usepackage{amsmath,amssymb,amsthm,textcomp}
\usepackage{enumerate}
\usepackage{geometry}
\geometry{total={210mm,297mm},
  left   = 30mm,
  right  = 30mm,
  top    = 30mm,
  bottom = 30mm,
  bindingoffset = 0mm
}

\usepackage[most]{tcolorbox}
\usepackage{inconsolata}
\usepackage{listings}

\newcommand*{\course}[1]{\def\coursename{#1}}
\newcommand*{\period}[1]{\def\periodname{#1}}
\newcommand*{\labnumber}[1]{\def\labnumbername{#1}}
\newcommand*{\labname}[1]{\def\labnamename{#1}}
\course      {}
\period      {}
\labnumber   {}
\labname     {}

\usepackage[
% pdftitle   = {\coursename~2018-2:~Lab~\labnumbername},
  pdftitle   = {Robotica~Autonoma~2020-1},
  pdfauthor  = {Prof. Oscar E. Ramos},
  colorlinks = true,
  linkcolor  = blue,
  urlcolor   = blue,
  citecolor  = blue,
  bookmarks  = true,
  bookmarksopenlevel = 2]{hyperref}

\usepackage{fancyhdr}
\pagestyle{fancyplain}
%\chead{}\rfoot{}\lfoot{}\cfoot{}
%\fancyhead[L]{\textit{\coursename~\periodname}}
\fancyhead[L]{\textit{\coursename}}
\fancyhead[R]{\subsectionmark}
\fancyfoot[L]{\textit{Lab~\labnumbername:~\labnamename}}
\fancyfoot[C]{}
\fancyfoot[R]{- \thepage~~-}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\setlength{\headheight}{13.6pt}
\renewcommand{\figurename}{Figura}


  
