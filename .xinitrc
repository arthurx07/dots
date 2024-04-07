#!/bin/env sh

# load $SHELL profiles
[ -f /etc/profile ] && . /etc/profile
[ -f $HOME/.profile ] && . $HOME/.profile

# run all system xinitrc shell scripts.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/* ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# merge user Xresources
[ -f $HOME/.Xresources ] && xrdb -merge $HOME/.Xresources

# source user-defined envs
[ -f $HOME/.xprofile ] && . $HOME/.xprofile

# run user-defined programs
[ -f $HOME/.xsession ] & . $HOME/.xsession

exec /usr/bin/dwm
