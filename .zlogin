#!/bin/env zsh
# If using other default shell than zsh, move this file to .login

# tcsh:
# ! $?DISPLAY -> variable is undefined in tcsh
# if ( ! $?DISPLAY && "$XDG_VTNR" == 2 ) then
#   exec startx
# endif

# bash:
# -z "$DISPLAY" -> variable empty in bash

# zsh:
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 2 ]; then # using tty2
  exec startx
fi

# The exec command ensures that the user is logged out when the X server exits, 
# crashes or is killed by an attacker. If you want to take the risk and remain 
# logged in when the X session ends, remove exec.

## return echo read -p "Start Xorg[Y/y]? " -n 1 -r echo if [[ $REPLY =~ [Yy]$ ]] then exec startx fi
