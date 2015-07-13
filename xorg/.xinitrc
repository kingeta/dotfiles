#! /bin/bash
#
# xinit
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

# KB + M
setxkbmap -option caps:super -option 108:64 -layout gb
xinput set-prop 10 'Device Accel Profile' -1
xinput set-prop 10 'Device Accel Velocity Scaling' 1 
xinput set-prop 11 'Device Accel Profile' -1
xinput set-prop 11 'Device Accel Velocity Scaling' 1 

# Start compton, with no -C now
#compton -zcf -r 5 -l -7 -t -7 -D 5 -i 1 -o 0.8 -e 1 &
compton &

# Cursor
xsetroot -cursor_name left_ptr
unclutter -root &

# Load wm and keybind manager
hsetroot -solid '#171717'
urxvtd -q -f -o
#feh --no-fehbg --bg-tile ~/Theming/Wallpapers/Beethoven/beet.png
sxhkd -f 100 &
exec bspwm
