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

# Caps lock = escape
setxkbmap -option caps:super -option 108:64 -layout gb

# Start compton, with no -C now
compton -zcf -r 5 -l -7 -t -7 -D 5 -i 1 -o 0.5 -e 1 &

# Set the cursor
xsetroot -cursor_name left_ptr

# Start unclutter
unclutter -root &

# Get the time right
ntpd -qg

# Load wm and keybind manager
sxhkd &
exec bspwm
