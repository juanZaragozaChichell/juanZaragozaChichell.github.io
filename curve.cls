\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curve}[2025/01/10 Minimal curve CV class]

% Pass all options to the base article class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{geometry}
\geometry{left=1in,right=1in,top=1in,bottom=1in}
\RequirePackage{parskip}
\RequirePackage{titlesec}
\titleformat{\section}{\Large\bfseries\sffamily}{}{0pt}{}
\titleformat{\subsection}{\large\bfseries\sffamily}{}{0pt}{}

\RequirePackage{etoolbox}
\RequirePackage{ifthen}
\RequirePackage[hidelinks]{hyperref}

\makeatletter
\def\@leftheader{}
\def\@rightheader{}

\newcommand{\leftheader}[1]{\def\@leftheader{#1}}
\newcommand{\rightheader}[1]{\def\@rightheader{#1}}

\newcommand{\makeheaders}[1][c]{%
  \begin{minipage}[t]{0.65\textwidth}
    \raggedright \@leftheader
  \end{minipage}\hfill
  \begin{minipage}[t]{0.3\textwidth}
    \raggedleft \@rightheader
  \end{minipage}
  \par\vspace{0.75em}
  {\centering{\LARGE\bfseries\sffamily \@title}\par}
  \vspace{1em}
}

\newcommand{\makerubric}[1]{%
  \@ifundefined{rubric@#1}{%
    \typeout{Rubric '#1' undefined}%
  }{%
    \csname rubric@#1\endcsname
  }%
}
\makeatother
