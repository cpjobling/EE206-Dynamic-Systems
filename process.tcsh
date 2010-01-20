#!/bin/tcsh

# show build message
source ../../message.tcsh

# make definition file
source ../../defs.tcsh

# make head
source ../../head.tcsh
#
# make tail
source ../../tail.tcsh

foreach type (slides lecture) 
 set FILE=${type}${LNO}.tex
 cat $TEMP/head.tmp >! $FILE
 if ($type == "slides") then
   cat ../../slides.tex >> $FILE
 else 
   cat ../../article.tex >> $FILE
 endif
 cat $TEMP/tail.tmp >> $FILE
 cat <<EOF  >> $FILE
%% END $FILE
\end{document}

EOF

end

sed -e "s/^%\\twoup/\\twoup/" < lecture${LNO}.tex >! lect${LNO}_2up.tex
latex lect${LNO}_2up.tex; latex lect${LNO}_2up.tex
latex lecture$LNO; latex lecture$LNO
latex slides$LNO; latex slides$LNO 
echo Done!
mv -f slides${LNO}.pdf ../../slides
mv -f lect*.pdf ../../handouts

rm -f defs.tex slides*.* lecture*.* lect*_2up.*