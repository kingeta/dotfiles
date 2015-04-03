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

# Start recursive bar
#COLORSCHEME="$(cat ~/.Xresources | grep include | cut -d '"' -f 2 )"
#FOREGROUNDCOLOR="$(getcolour foreground)"
#BACKGROUNDCOLOR="$(getcolour background)"
#FONT="DejaVuSansMono,DejaVuSansMono:bold"
#bash ~/Scripts/Work/LeftBar | bar -f $FONT -u 2 -p -g 2560x30+0+0 -F \#FF$(echo $FOREGROUNDCOLOR) -B \#FF$(echo $BACKGROUNDCOLOR) &
#bash ~/Scripts/Work/RightBar | bar -f $FONT -u 2 -p -F \#FF$(echo $FOREGROUNDCOLOR) -B \#FF$(echo $BACKGROUNDCOLOR) -g 1920x30+2560+0 &

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

# Set the wallpaper // now in bspwm config
#feh --no-fehbg --bg-tile ~/Theming/Wallpapers/Tiling/Monochrome/purplelights.png &

# Load wm and keybind manager
sxhkd &
export BSPWM_GAPS=true
exec bspwm
