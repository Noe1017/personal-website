% resume.cls - Custom resume style

\ProvidesClass{resume}
\LoadClass[11pt]{article}

% Color definitions
\usepackage{xcolor}
\definecolor{headerblue}{RGB}{0, 51, 102}    % Deep blue for name
\definecolor{sectionblue}{RGB}{0, 102, 204}  % Medium blue for sections
\definecolor{linkblue}{RGB}{0, 102, 204}     % Blue for links

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

% Output header at begin document
\AtBeginDocument{
  {\LARGE \bfseries \color{headerblue} \@name}
  \par\vspace{0.3cm}
  {\small \@address}
  \par\vspace{0.5cm}
}

% Section formatting
\newenvironment{rSection}[1]{
  \par\vspace{0.4cm}
  {\large \bfseries \color{sectionblue} #1}
  \par\vspace{-0.1cm}
  {\color{sectionblue}\hrule height 0.5pt}
  \vspace{0.2cm}
  \noindent
}
{
  \par\vspace{0.2cm}
}

% Subsection formatting
\newenvironment{rSubsection}[4]{
  \par\vspace{0.1cm}
  {\large #1} \hfill #2 \par
  {\large\textup{#3}} \hfill \textup{#4} \par
  \vspace{0.1cm}
}
{
  \par\vspace{0.2cm}
}
