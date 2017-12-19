#!/bin/sh
#prepend i3status with more stuff

i3status | while :
do

        read line
        sh "netmon | $line" || exit 1

done
