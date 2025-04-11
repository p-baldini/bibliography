#!/bin/sh

echo "Removing old bib file $1"

rm $1

echo "Generating new bib file $1 containing all the articles"

BIB_PATH=$(echo $0 | sed 's|/extract_references.sh||')
bibexport -a -ns -o $1 $(find $BIB_PATH -name "*.bib")

echo "Filtering the bib file $1 maintaining only the cited articles"

bibexport -ns -o $1 *.aux 
