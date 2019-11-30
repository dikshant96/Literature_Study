\ProvidesFile{these.cls}
\ProvidesClass{these}

%% Les options : il n'y en a pas
\newif\if@test
\@testfalse
\DeclareOption{test}{%
  \@testtrue
  \typeout{Ceci est un essai...^^J}}

%% On charge la classe article.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}

%%%
%%% Les références
%%%

%\RequirePackage{french}
\RequirePackage{chapterref}
%\def\@gG#1#2#3#4{} %%%%%%%%%%%%% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%\RequirePackage{hyperref}

%%%
%%% On enlève le \hbox de \cite
%%%
\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {%\hbox{%
         \csname b@\@citeb\endcsname%}
         }}}{#1}}

%%
%% Index terminologique
%%
\RequirePackage{index,multicol}
\makeindex
%\def\efill{\hfill\nopagebreak}%
%\def\dotfill{\leaders\hbox to.6em{\hss .\hss}\hskip\z@ plus  1fill}%
\def\dotfil{\leaders\hbox to.6em{\hss .\hss}\hfil}%
\def\pfill{\unskip~\dotfill\penalty500\strut\nobreak
               \dotfil~\ignorespaces}%
\def\voir#1#2{voir #1}
\renewenvironment{theindex}
               {\columnseprule \z@
                \columnsep 35\p@
                \chapter{Index terminologique}
                \begin{multicols}{2}%
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem
                \footnotesize
                \raggedright}
               {\end{multicols}}

\def\newindexitem{\futurelet\tokenafterthis\newiitem}%
\def\newiitem{%
    \let\doit\relax
    \def\reallydoit##1{\textbf{\uppercase{##1}}}%
    \let\foo=A\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=B\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=C\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=D\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=E\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=F\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=G\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=H\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=I\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=J\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=K\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=L\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=M\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=N\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=O\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=P\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=Q\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=R\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=S\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=T\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=U\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=V\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=W\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=X\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=Y\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=Z\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=a\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=b\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=c\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=d\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=e\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=f\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=g\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=h\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=i\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=j\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=k\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=l\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=m\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=n\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=o\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=p\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=q\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=r\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=s\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=t\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=u\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=v\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=w\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=x\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=y\ifx\tokenafterthis\foo\let\doit\reallydoit
    \else\let\foo=z\ifx\tokenafterthis\foo\let\doit\reallydoit
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \fi\fi\fi\fi\fi\fi
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \fi\fi\fi\fi\fi\fi\fi\fi\fi\fi
  \fi\fi\fi\fi\fi\fi
  \let\item\olditem
  \olditem\doit
  }%
\def\indexspace{%
  \ifhmode\else\par\noindent\fi
  \vskip 1ex\goodbreak
  \let\olditem\item
  \let\item\newindexitem
}


%%%
%%% Index de notations
%%%
\RequirePackage{longtable}
\newenvironment{thenotationindex}{%
  \chapter{Index de notations}
  \noindent\leavevmode\noindent
  \footnotesize
  \begin{longtable}{@{}lp{8.4cm}r@{}}%
    }{%
  \end{longtable}}
\def\printnotationindex{%
\IfFileExists{\jobname.nind}{\input{\jobname.nind}}{}}
\def\makenotationindex{%
  \newwrite\@notationindexfile
  \immediate\openout\@notationindexfile=\jobname.nidx
  \def\nindex{\@bsphack\begingroup
             \@sanitize
             \@wrnindex}\typeout
    {Writing notation index file \jobname.nidx}%
  \let\makenotationindex\@empty
}
\@onlypreamble\makenotationindex
\def\@wrnindex#1#2{%
   \protected@write\@notationindexfile{}%
      {\string\notationindexentry{#1}{#2}{\thepage}}%
 \endgroup
 \@esphack}
\def\nindex{\@bsphack\begingroup \@sanitize\@nindex}
\def\@nindex#1#2{\endgroup\@esphack}
\def\notationindexentry#1#2#3{#1 & #2 & #3 \\}
\makenotationindex

%%%
%%% Les macros sont dans un autre fichier
%%%
\RequirePackage{these_macros}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                        %%
%% Hauts et bas de pages  %%
%%                        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \fancyhf{}
%  \fancyfoot[RO,LE]{\textbf{\thepage}}
%  \fancyfoot[LO,RE]{\textbf{\today}}
%  \fancyhead[LO]{\mbox{}\leftmark}
%  \fancyhead[RE]{\mbox{}\rightmark}
  \fancyhead[RE]{\mbox{}\leftmark}
  \fancyhead[LE]{\thepage}
  \fancyhead[LO]{\mbox{}\rightmark}
  \fancyhead[RO]{\thepage}
  \fancypagestyle{plain}{%
    \fancyhf{}
    \fancyfoot[RO,LE]{\thepage}
%    \fancyfoot[RO,LE]{\textbf{\thepage}}
%    \fancyfoot[LO,RE]{\textbf{\today}}
    \renewcommand{\footrulewidth}{0pt}
    \renewcommand{\headrulewidth}{0pt}}
  
  \renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
  \renewcommand{\chaptermark}[1]{%
    \markboth{\if@mainmatter\@chapapp\ \thechapter. \fi #1}%
    {\if@mainmatter\@chapapp\ \thechapter. \fi #1}}
  % Je ne veux pas de \MakeUpperCase dans les hauts de page...
  \renewcommand{\tableofcontents}{%
    \chapter{\contentsname
      \@mkboth{%
        %\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
        \contentsname}{\contentsname}}%
    \@starttoc{toc}%
    }
  \renewenvironment{thebibliography}[1]
  {\chapter{\refname
      %\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \@mkboth{\refname}{\refname}}%
    \list{\@biblabel{\@arabic\c@enumiv}}%
    {\settowidth\labelwidth{\@biblabel{#1}}%
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
  
%%
%% Chapitres
%%

% Je veux que les pages vides soient vraiment vides...
% Copié depuis latex.ltx, indenté  et modifié
\def\cleardoublepage{\clearpage
  \if@twoside 
    \ifodd\c@page
    \else
      \thispagestyle{empty}% %%%% Je rajoute cette ligne
      \hbox{}%
      \newpage
      \if@twocolumn
        \hbox{}\newpage
      \fi
    \fi
  \fi}

%% Ce qu'il faut dessiner en te de chaque chapitre
\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}

\def\@makechapterhead#1{%
  \thispagestyle{plain}%
  %\vspace*{50\p@}%
  \vspace*{10\p@}%
  {\parindent \z@ \centering \reset@font
        \thickhrulefill\quad
        \scshape \@chapapp{} \thechapter
        \quad \thickhrulefill
        \par\nobreak
        \vspace*{10\p@}%
        \interlinepenalty\@M
        \hrule
        \vspace*{10\p@}%
        \Huge \bfseries #1\par\nobreak
        \par
        \vspace*{10\p@}%
        \hrule
    %\vskip 40\p@
    \vskip 100\p@
  }}

\def\@makeschapterhead#1{%
  \thispagestyle{plain}%
  %\vspace*{50\p@}%
  \vspace*{10\p@}%
  {\parindent \z@ \centering \reset@font
        \thickhrulefill
        \par\nobreak
        \vspace*{10\p@}%
        \interlinepenalty\@M
        \hrule
        \vspace*{10\p@}%
        \Huge \bfseries \scshape #1\par\nobreak
        \par
        \vspace*{10\p@}%
        \hrule
    %\vskip 40\p@
    \vskip 100\p@
  }}

%% Je veux que la commande \chapter appelle \@makechapterhead quand il
%% y a un numméro (ie, avec \chapter dans \mainmatter) et
%% \@makeschapterhead quand il n'y en a pas (ie, \chapter* ou \chapter
%% dans \frontmatter ou \backmatter).
\def\@chapter[#1]#2{% Copié depuis book.cls
  \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \addcontentsline{toc}{chapter}%
      {\protect\numberline{\thechapter}#1}%
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
    \if@mainmatter                         %%%%%%%%%%%%%%%%
      \@topnewpage[\@makechapterhead{#2}]%
    \else                                  %%%%%%%%%%%%%%%%
      \@topnewpage[\@makeschapterhead{#2}]%%%%%%%%%%%%%%%%%
    \fi                                    %%%%%%%%%%%%%%%%
  \else
    \if@mainmatter                         %%%%%%%%%%%%%%%%
      \@makechapterhead{#2}%
    \else                                  %%%%%%%%%%%%%%%%
      \@makeschapterhead{#2}%              %%%%%%%%%%%%%%%%
    \fi                                    %%%%%%%%%%%%%%%%
    \@afterheading
  \fi}

%%
%% Table des manières : il faut un peu plus de place pour les numéros
%% de chapitre qui sont en romain (voir chapterref.sty)
%%
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{2em}% C'était 1.5em
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
%\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\renewcommand*\l@section{\@dottedtocline{1}{2em}{2.3em}}

%%
%% Notes de bas de page
%%
%\let\footnoterule\relax

\def\thesection{\arabic{section}}
\def\thefigure{\arabic{figure}}
