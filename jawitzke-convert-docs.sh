#!/bin/bash
echo ""
# Declare input argument as a variable
INPUT=$1
OUTPUT=$INPUT

# Convert markdown to HTML
pandoc -o $OUTPUT.html $INPUT
echo "Created new file in HTML test.html"
echo ""
# Convert markdown to DOCX
pandoc -o $OUTPUT.docx $INPUT
echo "Created new file in DOCX test.html"
echo ""
# Convert markdown to ODT
pandoc -o $OUTPUT.odt $INPUT
echo "Created new file in ODT test.html"
echo ""
# Convert markdown to PDF

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
