#! /bin/bash

mkdir -p images
rm -f images/*

for number in 0 1 2 3 4 5 6 7 8 9
do
    file="images/$number.png"
    convert -size 100x200 -background white -fill black -gravity Center -pointsize 200 -font "GillSans" caption:"$number" $file
done