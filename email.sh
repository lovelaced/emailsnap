#!/bin/bash
vlc -I dummy v4l2:///dev/video0 --video-filter scene --no-audio --scene-path /home/USERNAME/images/webcam --scene-prefix image_prefix --scene-format png vlc://quit --run-time=1
NAME = $(echo $HOME'/images/webcam/image_prefix00051.png')
convert $NAME -flip current.jpg
thunderbird -compose "to=email@email.edu,subject=subject,attachment=file:///home/USER/images/webcam/current.jpg" &
sleep 1
xdotool key Control_L+Return
