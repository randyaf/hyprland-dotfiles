#!/bin/bash

DIR=$HOME/Pictures/Wallpapers/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

swww query || swww init

#change-wallpaper using swww
swww img ${DIR}/${RANDOMPICS} --transition-fps 60 --transition-type grow --transition-duration 3 --transition-pos top-right
wal -i ${DIR}/${RANDOMPICS}
pywal-discord
