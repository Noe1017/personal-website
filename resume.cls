% resume.cls - Custom resume style

\ProvidesClass{resume}
\LoadClass[11pt]{article}

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
  \begin{center}
    {\LARGE \bfseries \@name}
  \end{center}
  \begin{center}
    \@address
  \end{center}
}

% Section formatting
\newenvironment{rSection}[1]{
  \par\vspace{0.3cm}
  {\large \bfseries #1}
  \par\hrule
  \vspace{0.2cm}
}
{
  \par\vspace{0.2cm}
}

% Subsection formatting
\newenvironment{rSubsection}[4]{
  \par\vspace{0.1cm}
  {\large #1} \hfill {\em #2} \par
  {\em #3} \hfill {\em #4} \par
  \vspace{0.1cm}
}
{
  \par\vspace{0.2cm}
}
