#!/mnt/usr/clock/bin/bash

ROOT=/mnt/us/clock
FBINK=$ROOT/bin/fbink

# if the Kindle is not being used as clock, then just quit
test -f /mnt/us/clock/clockisticking || exit

TIME=$(date -R +"%H%M")

# clear the screen
eips -c

$FBINK -g  "file=$ROOT/images/${TIME:0:1}.png,x=100,y=100"
$FBINK -g  "file=$ROOT/images/${TIME:1:1}.png,x=300,y=100"
$FBINK -g  "file=$ROOT/images/${TIME:2:1}.png,x=100,y=400"
$FBINK -g  "file=$ROOT/images/${TIME:3:1}.png,x=300,y=400"


echo $TIME >/mnt/us/clock/clockisticking