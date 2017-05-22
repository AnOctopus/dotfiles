#!/bin/zsh


# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


userresources=$HOME/.Xresources
usermodmap=$HOME/.xmodmap

# merge in defaults and keymaps

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


# anthy
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# remove the beep
xset -b

ibus-daemon -drx
redshift -b .8:.5 &

# tap capslock to press escape
killall xcape
xcape -t 200 -e 'Control_L=Escape'

# window manager
exec i3
