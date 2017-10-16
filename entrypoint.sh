#!/bin/bash

while [ : ]
do
    sleep $SLEEP
    find . -name '/input/*.pdf' | parallel --tag -j 2 ocrmypdf $OCRMYPDF_OPTIONS '{}' '{}'
done
