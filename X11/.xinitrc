#!/bin/bash

sysresources=/etc/X11/xinit/.Xresources
userresources=$HOME/.Xresources

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

wal -i ~/media/photos/wallpapers/denali.jpg -o ~/.config/wal/scripts/startup.sh
#wal-steam -w &
compton -b
#sudo tunsafe start -d ~/mullvad/mullvad-us7.conf &
urxvtd -f -q -o &
emacs --daemon
export _JAVA_AWT_WM_NONREPARENTING=1 &
exec herbstluftwm -l
#exec bspwm
