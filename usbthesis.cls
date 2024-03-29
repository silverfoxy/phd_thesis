\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{usbthesis}[1999/08/01 SUNY Stony Brook thesis class]

\newif\if@top
\newif\if@sig

\DeclareOption{master}{%
     \newcommand{\@work}{Thesis}%
     \newcommand{\@degree}{Master of Science}}
\DeclareOption{phd}{%
     \newcommand{\@work}{Dissertation}%
     \newcommand{\@degree}{Doctor of Philosophy}}
\DeclareOption{top}{\@toptrue}
\DeclareOption{bottom}{\@topfalse}
\DeclareOption{sig}{\@sigtrue}
\DeclareOption{nosig}{\@sigfalse}
\DeclareOption*{\PackageWarning{usbthesis}{This package does not 
recognize option: \CurrentOption}}
%\ExecuteOptions{phd,bottom}
\ProcessOptions\relax

\LoadClass[letterpaper,12pt,oneside]{report}

\RequirePackage{setspace}
\doublespacing
\RequirePackage{vmargin}
\setpapersize{USletter}

%\setmargins{1.5in}{1.25in}{5.5in}{8.125in}{0.125in}{0.75in}{0.125in}{0.325in}
%\setmargins{1.5in}{1.25in}{5.5in}{8.125in}{0.125in}{0.2in}{0.125in}{0.5in}

\if@top
     \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.75in}{0.125in}{0.325in}
\else
     \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
\fi

%\renewcommand{\LARGE}{\Large}
%\renewcommand{\huge}{\Large}
%\renewcommand{\Huge}{\LARGE}
%\renewcommand{\Huge}{\Large}

\newcommand{\ps@prelim}{%
     \pagenumbering{roman}%
     \renewcommand{\@oddhead}{}%
     \renewcommand{\@evenhead}{}%
     \renewcommand{\@evenfoot}{\hfil\textrm{\thepage}\hfil}%
     \renewcommand{\@oddfoot}{\@evenfoot}}
\newcommand{\ps@thesis}{%
     \pagenumbering{arabic}%
     \if@top
     \renewcommand{\@oddfoot}{}%
     \renewcommand{\@evenfoot}{}%
     \renewcommand{\@evenhead}{\hskip-0.25in \textrm{\thepage}\hfil}%
     \renewcommand{\@oddhead}{\hfil \textrm{\thepage} \hskip-0.25in}%
     \renewcommand{\ps@plain}{%
         \renewcommand{\@oddfoot}{}%
         \renewcommand{\@evenfoot}{}%
         \renewcommand{\@evenhead}{\hskip-0.25in \textrm{\thepage}\hfil}%
         \renewcommand{\@oddhead}{\hfil\textrm{\thepage} \hskip-0.25in}}
     \fi
}

\renewcommand{\month}[1]{\newcommand{\@month}{#1}}
\renewcommand{\year}[1]{\newcommand{\@year}{#1}}

\newcommand{\program}[1]{%
     \newcommand{\@program}{#1}}
\newcommand{\director}[2]{%
     \newcommand{\@directorname}{\textbf{#1}}%
     \newcommand{\@directorposition}{\textbf{#2}}}
\newcommand{\chairman}[2]{%
     \newcommand{\@chairmanname}{\textbf{#1}}%
     \newcommand{\@chairmanposition}{\textbf{#2}}}
\newcommand{\fstmember}[2]{%
     \newcommand{\@fstmembername}{\textbf{#1}}%
     \newcommand{\@fstmemberposition}{\textbf{#2}}}
\newcommand{\sndmember}[2]{%
     \newcommand{\@sndmembername}{\textbf{#1}}%
     \newcommand{\@sndmemberposition}{\textbf{#2}}}
\newcommand{\trdmember}[2]{%
     \newcommand{\@trdmembername}{\textbf{#1}}%
     \newcommand{\@trdmemberposition}{\textbf{#2}}}
\newcommand{\outmember}[3]{%
     \newcommand{\@outmembername}{\textbf{#1}}%
     \newcommand{\@outmemberposition}{\textbf{#2}}%
     \newcommand{\@outmemberschool}{\textbf{#3}}}
\newcommand{\sndoutmember}[3]{%
     \newcommand{\@sndoutmembername}{\textbf{#1}}%
     \newcommand{\@sndoutmemberposition}{\textbf{#2}}%
     \newcommand{\@sndoutmemberschool}{\textbf{#3}}}
\newcommand{\dean}[1]{%
     \newcommand{\@dean}{#1}}

\renewcommand{\maketitle}{\begin{titlepage}%
     \if@top
     \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
     \fi
     \renewcommand{\footnotesize}{\small} %\let\footnoterule\relax
     \setcounter{page}{0}%
     \begin{center}%
     \setlength{\baselineskip}{29pt}%
%     \vspace*{0.2in}%
     {\LARGE\textbf{\@title}}\\%

     \vfill 
     \setlength{\baselineskip}{14.5pt}
%     \large
%     [0.2in] 
     A \@work\ Presented\\%
%     [0.2in] \vfill A \@work, Presented\\%
     [0.2in] by\\%
     [0.25in] \textbf{\large \@author} \\%
     [0.25in] to\\%
     [0.2in] The Graduate School\\%
     [0.2in] in Partial Fulfillment of the Requirements\\
%     [0.2in] Requirements\\%
     [0.2in] for the Degree of\\%
     [0.5in] \textbf{\large \@degree}\\%
     [0.2in] in\\%
     [0.2in] \textbf{\large \@program}\\%
     [0.5in] Stony Brook University\\%
     [0.2in] \textbf{\@month\ \@year}%
     \end{center}%
     \par\null%
     \setcounter{footnote}{0}%
     \let\thanks\relax%
     \let\maketitle\relax%
\end{titlepage}}

\newcommand{\makeapproval}{%
     \if@top
     \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
     \fi
     \pagestyle{prelim}
     \setcounter{page}{2}%
     \begin{center}%
     \setlength{\baselineskip}{14.5pt}%
     \textbf{Stony Brook University}\\%
     [0.1in]{The Graduate School} \\%
     [0.35in] \textbf{\large \@author}%

     \vspace{0.25in}%
     {\setlength{\baselineskip}{14.5pt}%
     We, the \MakeLowercase{\@work}\ committee for the above candidate for the
     \@degree\ degree, hereby recommend acceptance of this \MakeLowercase{\@work}.\par}

     \setlength{\baselineskip}{0pt}%

     \rule[-0.35in]{3in}{\if@sig 0.01in \else 0.00in \fi}\\
     [0.03in]\@directorname{} \textbf{-- \@work{} Advisor}\\
     \vspace{0.07in}
     \@directorposition\\%
 
     \rule[-0.35in]{3in}{\if@sig 0.01in \else 0.00in \fi}\\
     [0.03in]\@chairmanname{} \textbf{-- Chairperson of Defense}\\
     \vspace{0.07in}
     \@chairmanposition\\%
 
     \rule[-0.35in]{3in}{\if@sig 0.01in \else 0.00in \fi}\\
     [0.03in]\@fstmembername\\
     \vspace{0.07in}
     \@fstmemberposition\\%

     \rule[-0.35in]{3in}{\if@sig 0.01in \else 0.00in \fi}\\
     [0.03in]\@outmembername\\
     \vspace{0.07in}
     \@outmemberposition\\
     \vspace{0.07in}
     \@outmemberschool

     \rule[-0.35in]{3in}{\if@sig 0.01in \else 0.00in \fi}\\
     [0.03in]\@sndoutmembername\\
     \vspace{0.07in}
     \@sndoutmemberposition\\
     \vspace{0.07in}
     \@sndoutmemberschool

     
     \vspace{0.75in}%
     This \MakeLowercase{\@work}\ is accepted by the Graduate School.
     \parbox{\if@sig 3in \else 3.5in \fi}%
     {\centering%\raggedright%
     \baselineskip 14.5pt%
     \rule[-0.55in]{3in}{\if@sig 0.01in \else 0.00in \fi}\\[0.03in]
     \if@sig \else \@dean\\ \fi
     Interim Dean of the Graduate School\\}%
     \end{center}\clearpage}


\renewenvironment{abstract}{%
    \if@top
    \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
    \fi
    \newpage
     \pagebreak
    \begin{center}%
    \setlength{\baselineskip}{14.5pt}%
    \vspace*{0.1in}%
    {\large Abstract of the \@work}\\%
     % {\large Abstract}\\%
    [0.2in]{\textbf{\Large{\@title}}}\\%
%    [0.2in]{\Huge{\@title}}\\%
%    {\bf \sc \Huge {\@title\\}}%
    \vspace{0.2in} by \\%
%    [0.2in]by\\%
    [0.2in]\textbf{\large \@author}\\%
    [0.3in]\textbf{\large \@degree}\\%
    [0.2in]in\\%
    [0.2in]\textbf{\large \@program}\\%
    [0.2in]{\large Stony Brook University} \\
    [0.2in]{\large \textbf{\@year}}\\%
    [0.2in]\if@sig {\large \@directorname} \fi %for extra abstract copy
    \end{center}%
    \par%
    \vspace{0.4in}%
    \begin{quote}}%
    {\end{quote}%
    %\par\vfil\null
    \clearpage}
     

\newenvironment{dedication}{%
     \if@top
    \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
     \fi
     % \thispagestyle{empty}%
     % \pagestyle{empty}
     \vspace*{\fill}%
     \begin{center}}%
     {\end{center}\vspace*{\fill}\clearpage}

\newenvironment{acknowledgements}{%
     \if@top
    \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
     \fi
     \clearpage%
     \phantomsection
     \addcontentsline{toc}{chapter}{\protect\numberline{}{Acknowledgements}}
     \chapter*{Acknowledgements}%
     % \thispagestyle{empty}%
     % \pagestyle{empty}%
     }
     {\clearpage}

\renewenvironment{thebibliography}[1]
      {\chapter*{\bibname
         \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
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
       \endlist
       \addcontentsline{toc}{chapter}{\protect\numberline{}{\bibname
         \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}}}

\renewcommand\listoffigures{%
     \if@top
    \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
     \fi
     \if@twocolumn
       \@restonecoltrue\onecolumn
     \else
       \@restonecolfalse
     \fi
     \clearpage
     \phantomsection
     \addcontentsline{toc}{chapter}{\protect\numberline{}{\listfigurename
       \@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}}}%
     \chapter*{\listfigurename
       \@mkboth{\MakeUppercase\listfigurename}%
               {\MakeUppercase\listfigurename}}%
     \@starttoc{lof}%
     \if@restonecol\twocolumn\fi
     }

\renewcommand\listoftables{%
     \if@top
    \setmarginsrb{1.5in}{1in}{1.5in}{1in}{0.125in}{0.2in}{0.125in}{0.5in}
     \fi
     \if@twocolumn
       \@restonecoltrue\onecolumn
     \else
       \@restonecolfalse
     \fi
     \clearpage
     \phantomsection
     \addcontentsline{toc}{chapter}{\protect\numberline{}{\listtablename
       \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}}}%
     \chapter*{\listtablename
       \@mkboth{%
           \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
     \@starttoc{lot}%
     \if@restonecol\twocolumn\fi
     }
