#!/bin/tcsh

# Make LaTeX definitions file
cat <<EOF >! defs.tex
%% Common Definitions for Slides and Notes
\def\FileDate{${FILEDATE}}
\def\FileVersion{${VERSION}}
%% 

\def\printlandscape{\special{landscape}}    % Works with dvips.

\articlemag{1}



\newpagestyle{${CODE}}%
  {${CODE}: ${MODULE} \hspace{\fill}\rightmark \hspace{\fill}\thepage}{}%
\pagestyle{${CODE}}

\markright{${RIGHT}}

\title{${TITLE}}
\author{${AUTHOR}}
\date{${FILEDATE}}

\newcommand{\sref}[1]{SLIDE \ref{#1}}

\slideframe{Oval}

\newcommand{\heading}[1]{%
  \begin{center}
    \large\bf
    \shadowbox{#1}%
  \end{center}
  \vspace{1ex minus 1ex}}

\newcommand{\BF}[1]{{\bf #1:}\hspace{1em}\ignorespaces}

\newcommand\ssmodeltd{
   \begin{eqnarray*}
     \dot{\mathbf{x}}(t) & = &
            \mathbf{A}\mathbf{x}(t)+\mathbf{B}\mathbf{u}(t) \\\\
          \mathbf{y}(t) & = &
             \mathbf{C}\mathbf{x}(t)+\mathbf{D}\mathbf{u}(t)
   \end{eqnarray*}
} %

\newcommand\ssmodelfd{
  \begin{eqnarray*}
    s\mathbf{X}(s) - \mathbf{x}(0) & = &
                 \mathbf{A}\mathbf{X}(s)+\mathbf{B}\mathbf{U}(s) \\\\
     \mathbf{Y}(s)                 & = &
                 \mathbf{C}\mathbf{X}(s)+\mathbf{D}\mathbf{U}(s)
  \end{eqnarray*}
}

\newcommand{\sIminusA}{s\mathbf{I}-\mathbf{A}}

\newcommand\resolvent{\left[\sIminusA{}\right]^{-1}}

\newcommand{\adjsIminusA}{\mathrm{adj}\left[\sIminusA{}\right]}

\newcommand{\detsIminusA}{\left|\sIminusA{}\right|}

\newcommand{\Phis}{\mathbf{\Phi}(s)}

\newcommand{\phit}{\mathbf{\phi}(t)}

\newcommand{\Matlab}{\emph{\sc{Matlab}}}

\newcommand{\Simulink}{\emph{\sc{Simulink}}}



\endinput % defs.tex

EOF
