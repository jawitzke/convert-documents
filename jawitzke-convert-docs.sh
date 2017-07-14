#!/bin/bash
echo ""
# Declare input argument as a variable
INPUT=$1
OUTPUT=$INPUT

# Convert markdown to HTML
pandoc -o $OUTPUT.html $INPUT
echo "Created new file in HTML $OUTPUT.html"
echo ""
# Convert markdown to DOCX
pandoc -o $OUTPUT.docx $INPUT
echo "Created new file in DOCX $OUTPUT.docx"
echo ""
# Convert markdown to ODT
pandoc -o $OUTPUT.odt $INPUT
echo "Created new file in ODT $OUTPUT.odt"
echo ""
# Convert markdown to PDF
pandoc $INPUT --latex-engine=xelatex -o $OUTPUT.pdf
echo "Created new file in PDF $OUTPUT.pdf"
echo ""
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
