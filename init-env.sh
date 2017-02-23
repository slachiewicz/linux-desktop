#!/bin/sh
export DISPLAY=":1"
/usr/bin/fbsetbg /bg.png &
/usr/bin/xclock -geometry 70x70-1+1 &
/usr/bin/wbar --config-file /home/alpine/.wbar &
