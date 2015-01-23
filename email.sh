#!/bin/bash
if [ ! -d ~/snaps/ ]; then
  mkdir ~/snaps

vlc -I dummy v4l2:///dev/video0 --video-filter scene --no-audio --scene-path '/home/'$USER'/snaps' --scene-prefix image_prefix --scene-format png vlc://quit --run-time=1
NAME = $(echo $HOME'/snaps/image_prefix00051.png')
convert $NAME -flip current.jpg
# If you don't want the original image removed, comment out the line below
rm $NAME
thunderbird -compose 'to=email@email.edu,subject=subject,attachment=file:///home/'$USER'/snaps/current.jpg' &
sleep 1
xdotool key Control_L+Return
