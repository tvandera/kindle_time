#! /bin/bash

mkdir -p images
rm -f images/*

for number in 0 1 2 3 4 5 6 7 8 9
do
    file="images/$number.png"
    convert -size 220x400 -background white -fill black -gravity Center -pointsize 400 -font "Calibri" caption:"$number" $file
done
