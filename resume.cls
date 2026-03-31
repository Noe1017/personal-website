% resume.cls - Compact CV style
\ProvidesClass{resume}
\LoadClass[11pt]{article}

% Core packages and colors
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\definecolor{headerblue}{RGB}{15, 45, 95}
\definecolor{sectionblue}{RGB}{25, 85, 155}
\definecolor{linkblue}{RGB}{25, 85, 155}

% Page defaults
\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.08em}
\setlist[itemize]{leftmargin=1.35em, labelsep=0.45em, topsep=0.18em, itemsep=0.14em, parsep=0pt, partopsep=0pt}

% Initialize variables
\def\@name{}
\def\@address{}

% Store name and addresses
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\address}[1]{%
  \ifx\@address\@empty
    \def\@address{#1}%
  \else
    \expandafter\def\expandafter\@address\expandafter{\@address\\#1}%
  \fi
}

% Header formatting
\AtBeginDocument{
  \begin{center}
  {\fontsize{22}{24}\selectfont\bfseries\color{headerblue}\@name}\par
  \vspace{0.16cm}
  {\small\@address}\par
  \end{center}
  \vspace{0.10cm}
  {\color{sectionblue}\hrule height 0.5pt}
  \vspace{0.16cm}
}

% Section formatting
\newenvironment{rSection}[1]{
  \par\vspace{0.24cm}
  {\normalsize\bfseries\color{sectionblue}#1}\par
  \vspace{0.07cm}
  {\color{sectionblue}\hrule height 0.6pt}
  \vspace{0.14cm}
  \noindent
}{
  \par\vspace{0.04cm}
}

% Entry formatting: Institution/Company + Location, then Title + Date
\newenvironment{rSubsection}[4]{
  \par\vspace{0.06cm}
  {\normalsize\bfseries #1}\hfill{\small #2}\par
  {\normalsize\textup{#3}}\hfill{\small\textup{#4}}\par
  \vspace{0.05cm}
}{
  \par\vspace{0.09cm}
}
