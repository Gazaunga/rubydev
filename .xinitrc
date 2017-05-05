#!/bin/sh

sh ~/.fehbg &

#userresources=$HOME/.Xresources
userresources=$HOME/bin/gruvbox.xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

#Set the background color

#hsetroot -solid "#fdf6e3"		#light
#hsetroot -solid "#073642"		#dark
#hsetroot -solid "#3c3836"

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi
