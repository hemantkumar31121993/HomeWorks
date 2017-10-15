\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{assignment}

\LoadClass{article}

\newcommand{\course}[1]{\def\@course{#1}}

\renewcommand{\maketitle}{
    \fbox{
            \begin{minipage}{0.98\linewidth}
                \bigskip
                \large{CSE, IIT Kanpur} \hfill \large{\@course}
                \begin{center}
                    \huge{\@title}
                \end{center}
                \large{\@author} \hfill \large{\@date}
                \bigskip
            \end{minipage}
    }
    \bigskip
    \bigskip
}

\setlength{\parindent}{0em}
\newcommand{\newpar}{\par\medskip}

\newcounter{problem}

\newenvironment{problem}[1]{
    \refstepcounter{problem}
    \textbf{Problem~\theproblem}: #1 \newpar
}{}

\newenvironment{solution}[1]{
    \textbf{Solution}: \newpar
    #1
    \clearpage
}{}
