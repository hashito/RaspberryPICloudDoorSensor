#!/bin/bash
while true; do
    pin17bffn=/var/tmp/pin17
    pin17=$(gpio -g read 17)
    pin17bf=0

    if [[ -e $pin17bffn ]]; then
        pin17bf=$(cat $pin17bffn)
    fi

    if [[ $pin17 -ne $pin17bf ]]; then
        curl -s -XPOST -d "$pin17" https://script.google.com/macros/s/AKfycbwCy$
    fi

    echo $pin17>$pin17bffn

    sleep 1
done