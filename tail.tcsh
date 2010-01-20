#!/bin/tcsh

# Make LaTeX file footer
cat <<EOF >! /tmp/tail.tmp
%\usepackage{html}
\usepackage{verbatim,semhelv,fancybox,sem-a4,times}
%\usepackage{epsfig}

\input{defs}
%\twoup   % Try me.

\begin{document}

\maketitle          % This won't show up when \onlynotestoo is in effect.

\begin{slide}
  \ifslidesonly              % Title slide only for slidesonly selection.
    \maketitle
    \addtocounter{slide}{-1}
    \slidepagestyle{empty}
  \fi
\end{slide}

\input{notes}

EOF

