%
% Innovative Innovation Cheatsheet Class File
%
% This class has been downloaded from:
% https://github.com/innovativeinnovation/cheatsheet-latex-template
%
% Author:
% William Belle <william.belle@gmail.com>
%
% License:
% LPPL v1.3c (http://www.latex-project.org/lppl)
%

%------------------------------------------------------------------------------
% Definition
%------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{innovativeinnovation-cheatsheet}[2019/10/19 v0.0.1 Innovative Innovation Cheatsheet]

% Inherit options of extarticle
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{extarticle}
}
\ProcessOptions\relax
\LoadClass{extarticle}

%------------------------------------------------------------------------------
% Packages
%------------------------------------------------------------------------------
% Layout
\RequirePackage{geometry}
% Header and footer
\RequirePackage{fancyhdr}
% Graphic
\RequirePackage{tikz}
% Fonts
\RequirePackage{pslatex}
\RequirePackage[sfdefault]{roboto}
% Multiple columns
\RequirePackage{multicol}
% Code
\RequirePackage{listings}
% Hyperlink
\RequirePackage{hyperref}
% Paragraph
\RequirePackage{parskip}
% Pifont package
\RequirePackage{pifont}
% For attaching images
\RequirePackage{graphicx}
% For enumeration
\RequirePackage{enumitem}
% For table width adjustment
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
%------------------------------------------------------------------------------
% Colors
%------------------------------------------------------------------------------
\definecolor{innoinnoblue}{RGB}{0,0,204}
\definecolor{innoinnobggray}{RGB}{250,252,253}
\definecolor{innoinnofggray}{RGB}{214,213,218}


% Style for code snippets
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{code_style}{
    language=SQL,
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{innoinnoblue},
    numberstyle=\scriptsize\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\scriptsize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                                     
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}



%------------------------------------------------------------------------------
% Commands
%------------------------------------------------------------------------------
\newcommand*{\cheatsheettitle}[1]{\def\@cheatsheettitle{#1}}
\newcommand*{\cheatsheetsection}[1]{
  \vspace{3mm}
  \textbf{\large\color{innoinnoblue} #1}
  \newline
  \vspace{2mm}
}
\newcommand*{\cheatsheetsubsection}[1]{
  \vspace{1mm}
  \textbf{\normalsize\color{innoinnoblue} #1}
  \\[4pt]
  \small
}
\newcommand*{\cheatsheetfooter}[2]{
  \small\textit{#1\newline\url{#2}}
}

%------------------------------------------------------------------------------
% Page layout
%------------------------------------------------------------------------------
% Page margins
\geometry{a4paper, landscape, left=7mm, right=7mm, bottom=10mm, top=22mm}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer
\fancyhf{}
\pagestyle{fancy}
% Remove spacing between items
\newcommand{\be}{\begin{enumerate}[topsep=4pt,itemsep=3pt,partopsep=1pt,parsep=1pt]}
\newcommand{\ee}{\end{enumerate}}
\newcommand{\bi}{\begin{itemize}[leftmargin=*,topsep=1.5pt,itemsep=1.5pt,partopsep=1.5pt,parsep=1.5pt]}
\newcommand{\ei}{\end{itemize}}

\usetikzlibrary{calc}
\fancyhead[C]{
  \begin{tikzpicture}[overlay, remember picture]
    \fill[innoinnoblue] (current page.north west) rectangle ($(current page.north east)+(0,-14mm)$);
    \node[anchor=north west, text=white, font=\Huge, minimum size=15mm, inner xsep=6mm] at (current page.north west) {\@cheatsheettitle};
    \node[anchor=north east, minimum size=14mm, inner xsep=6mm] at (current page.north east) {};
  \end{tikzpicture}
}

%------------------------------------------------------------------------------
% Text
%------------------------------------------------------------------------------
% Paragraph indentation
\setlength{\parindent}{0pt}
% Paragraph
\setlength{\parskip}{0.75\baselineskip plus 2pt}
% Item indentation
\setlength\itemindent{10pt}

%------------------------------------------------------------------------------
% Multicolumns
%------------------------------------------------------------------------------
\setlength{\columnseprule}{.05mm}
\setlength{\columnsep}{0.5cm}
\def\columnseprulecolor{\color{innoinnofggray}}

%------------------------------------------------------------------------------
% Hyperlink
%------------------------------------------------------------------------------
\hypersetup{
  colorlinks=true,
  linkcolor=innoinnoblue,
  urlcolor=innoinnoblue,
}
\urlstyle{same}

%------------------------------------------------------------------------------
% Code
%------------------------------------------------------------------------------
\lstset{
  belowcaptionskip=1\baselineskip,
  frame=single,
  xleftmargin=2mm,
  xrightmargin=2mm,
  backgroundcolor=\color{innoinnobggray},
  rulecolor=\color{innoinnofggray},
  basicstyle=\small\ttfamily,
  framesep=2mm,
  aboveskip=5mm,
  belowskip=0mm,
}
