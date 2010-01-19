#!/bin/tcsh

# Make LaTeX file header
cat <<EOF >! /tmp/head.tmp
\def\FileDate{${FILEDATE}}
\def\FileVersion{${VERSION}}
%%
%% COPYRIGHT 1998,1999 by ${AUTHOR} (${EMAIL})
%%
%% ${CODE} ${MODULE}
%% ${SECTION}
%% ${TITLE}
%% 


EOF

