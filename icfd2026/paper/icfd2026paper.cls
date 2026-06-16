\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icfd2026paper}[2023/12/13]
\LoadClassWithOptions{article}
%%

  \if@titlepage
  \renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\normalsize
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\large \textbf \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\abstract\relax
  \global\let\and\relax
}
\else
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont{}}}}%
    \long\def\@makefntext##1{\noindent
            \hb@xt@0.1em{%
                \hss\@textsuperscript{\normalfont{}}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\abstract\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vspace*{-5mm}%

  \begin{center}%
  \let \footnote \thanks
    {\large \textbf \@title \par}%
%%   \vskip 1.5em %%change spacing between title and author, 2022/Mar./30
     \vskip 1em%
    {\normalsize
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
%%    {\small {\textbf{ABSTRACT}}}  %%change font size, 2022/Mar./23
    {\normalsize {\textbf{ABSTRACT}}}
  \end{center}%
  %\par
  %\vskip 1.5em
  \vspace*{-0.6em}%
      \hspace{0em}%
      \vbox
%%    {\hsize1.0\fullwidth\small\@abstract}  %%change font size, 2022/Mar./23
    {\hsize1.0\fullwidth\normalsize\@abstract}
    \par\vskip 1.6em
}
\fi

\renewcommand \thesection {\@arabic\c@section.}
\renewcommand\thesubsection   {\thesection\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\figurename{Fig.}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1~#2}%
  \ifdim \wd\@tempboxa >\hsize
    #1~#2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.25ex \@plus -1ex \@minus -.2ex}%
                                   {0.5ex \@plus .0ex}%
                                   {\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {0.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}

\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \parsep        \z@
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.99\columnwidth
  \kern2.6\p@}

\renewcommand{\abstract}[1]{\def\@abstract{#1}}
\newcommand{\correspondingauthor}[1]{\def\@correspondingauthor{#1}}
\newcommand{\emailaddress}[1]{\def\@emailaddress{#1}}

%\setlength\paperheight {271mm}
%\setlength\paperwidth  {192mm}
%\setlength\paperheight {297mm}
%\setlength\paperwidth  {210mm}
\setlength\columnsep{10mm}
\setlength\columnwidth{80mm}
\setlength\columnseprule{0\p@}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\setlength\lineskiplimit{1\p@}
\setlength\normallineskiplimit{1\p@}
%\renewcommand{\baselinestretch}{0.9} %%change line spacing, 2022/Mar./23
%\renewcommand{\baselinestretch}{1.0} %%change line spacing, 2022/Mar./23
\renewcommand{\baselinestretch}{0.95}
\setlength\parskip{0\p@}
%\setlength\parindent{2pc} %%change indent, 2022/Mar./30
\setlength\parindent{5 mm}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setlength\topskip{0mm}
\setlength\headheight{2\topskip}
\setlength\footskip{0mm}
\ifdim\footskip<\baselineskip
  \setlength\footskip{\baselineskip}
\fi

\setlength{\hoffset}{-1. in}
\setlength{\voffset}{-1. in}

\setlength{\paperwidth}{ 597  pt}
\setlength{\paperheight}{ 845  pt}

%\setlength{\oddsidemargin}{16mm}%%change margin, 2022/Mar./28
\setlength{\oddsidemargin}{20mm}
%\setlength{\evensidemargin}{16mm}%%change margin, 2022/Mar./28
\setlength{\evensidemargin}{20mm}
%\setlength{\topmargin}{20mm}%%change margin, 2022/Mar./28
\setlength{\topmargin}{25mm}
\setlength{\headheight}{   0  pt}
\setlength{\headsep}{   0  pt}
\setlength{\textheight}{257mm}
%\setlength{\textwidth}{178mm} %%change width of column, 2022/Mar./28
\setlength{\textwidth}{170mm}
\setlength{\marginparsep}{   0  pt}
\setlength{\marginparwidth}{   0  pt}
\setlength{\footskip}{10  pt}

\newdimen\fullwidth
%\setlength{\fullwidth}{178mm} %%change width of column, 2022/Mar./28
\setlength{\fullwidth}{170mm} 
