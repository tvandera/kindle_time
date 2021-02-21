#!/mnt/us/clock/bin/bash

ROOT=/mnt/us/clock
FBINK=$ROOT/bin/fbink


while true
do
    # if the Kindle is not being used as clock, then just quit
    test -f /mnt/us/clock/clockisticking || exit

    TIME=$(date -R +"%H%M")

    # clear the screen
    # eips -c

    $FBINK -g  "file=$ROOT/images/${TIME:0:1}.png,x=80,y=20"
    $FBINK -g  "file=$ROOT/images/${TIME:1:1}.png,x=300,y=20"
    $FBINK -g  "file=$ROOT/images/${TIME:2:1}.png,x=80,y=380"
    $FBINK -g  "file=$ROOT/images/${TIME:3:1}.png,x=300,y=380"

    # sleep until next minute
    sleep $((60 - $(date +%S)))
done