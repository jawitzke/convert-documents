#!/bin/bash
echo ""
# Declare input argument as a variable
INPUT=$1
OUTPUT=$(echo -n $INPUT | head -c -3)

# Convert markdown to HTML
pandoc -o $OUTPUT.html $INPUT
echo "Created new file in HTML format called $OUTPUT.html"
echo ""
# Convert markdown to DOCX
pandoc -o $OUTPUT.docx $INPUT
echo "Created new file in DOCX format called $OUTPUT.docx"
echo ""
# Convert markdown to ODT
pandoc -o $OUTPUT.odt $INPUT
echo "Created new file in ODT format called $OUTPUT.odt"
echo ""
# Convert markdown to PDF
pandoc $INPUT --latex-engine=pdflatex -o $OUTPUT.pdf
echo "Created new file in PDF fromat called $OUTPUT.pdf"
echo ""
#convert markdown to RTF
pandoc -s $INPUT -o $OUTPUT.rtf
echo "Created new file in RTF format called $OUTPUT.rtf"
echo ""
echo "All Done"
echo "Converted $INPUT to HTML, DOCX, ODT, PDF, and RTF" 
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
