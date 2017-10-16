#!/bin/bash

while [ : ]
do
    sleep $SLEEP
    find . -name '$OCR_INPUT/*.pdf' | parallel --tag -j 2 ocrmypdf $OCRMYPDF_OPTIONS '{}' '$OCR_OUTPUT/{}'
done
