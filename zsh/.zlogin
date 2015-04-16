# get zsh working
SHELL=/usr/bin/zsh

# ascii art
#cat /etc/issue

# get mpd working
rm /tmp/mpd.fifo
mpd 

# scrobble... maybe
mpdscribble

# start x automatically
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
