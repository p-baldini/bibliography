#!/bin/sh

echo "Removing old bib file $1"

rm $1

echo "Generating new bib file $1 containing all the articles"

bibexport -ns -o $1 *.bib

echo "Filtering the bib file $1 maintaining only the cited articles"

bibexport -ns -o $1 *.aux 
