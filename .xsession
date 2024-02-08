#!/bin/env sh

hsetroot -fill "${HOME}/.config/wpg/.current" &

# sleep otherwise glitch produced with display when running xrandr
sleep 1.5 && ${HOME}/.local/bin/kxrandr ext -i && ${HOME}/.local/bin/kwal -r & # xrandr --auto && $HOME/.local/bin/kxrandr &
  # fix kwal -> make faster

## ${HOME}/.local/bin/kwal -r &

xrdb -merge ${HOME}/.cache/wal/colors.Xresources &k

slstatus &

picom -b &

xset r rate 280 60 &

${HOME}/.local/bin/kdark &

# udiskie &
devmon 2>&1 > /dev/null &

xautolock -detectsleep -time 5 -locker "$(which klock)" -corners 0-0+ -notify 10 -notifier "notify-send -u critical -t 10000 -- '   locking screen in 10 seconds'" &

clipmenud &

gentoo-pipewire-launcher &

sxhkd & # -> run exec dwm and source .xsession (run sxhkd) after xinit shell scripts, to fix dbus-related problems

# # transmission (daemon & rss)
# # transmission-daemon --encryption-required --paused & # managed by openrc
transmission-rss -f &

# # nnn; dvtm + ueberzug for previews [to-do]
# # NNN_OPTS="-P"
# # NNN_TRASH="2"
# # NNN_PLUG="f:preview-tui"
# # NNN_FIFO=/tmp/nnn.fifo
