#! /bin/bash
#
# .xinitrc
#

# Load Xresouces
xrdb -load ~/.Xresources

# For whom the bell tolls
xset b 0 0 0

# Set up my monitors
xrandr --output DVI-D-0 --auto --primary
xrandr --output HDMI-0 --auto --right-of DVI-D-0

# Bars
bash ~/Scripts/Bar/Left &
bash ~/Scripts/Bar/Right &

# Keyboard
setxkbmap -option caps:super -option 108:64 -layout gb

# Start compton, with no -C now
compton -zcf -r 5 -l -7 -t -7 -D 5 -i 1 -o 0.5 -e 1 &

# Cursor
xsetroot -cursor_name left_ptr
unclutter -root &

# Load wm and keybind manager
#hsetroot -solid '#050515'
urxvtd -q -f -o
feh --no-fehbg --bg-fill ~/Media/Images/Analog/darkbridge.jpg ~/Media/Images/Analog/darktraffic.jpg &
sxhkd &
exec bspwm
