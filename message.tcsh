#!/bin/tcsh

# Display details of files being built
cat <<EOF
Building and compiling LaTeX files for
---------------------------------------------------------
    ${CODE}: ${MODULE}
    Section: ${SECTION}
    Lecture ${LNO}: ${TITLE}
    By: ${AUTHOR} (${EMAIL})
    Version: ${VERSION}
    Date: ${FILEDATE}
---------------------------------------------------------

EOF
