#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#xwinwrap -ovr -ni -fs -- mpv -vo x11 -wid WID --keepaspect=no --loop (Path to Video) &
#compton &
#wal -R &
#wal -i (Path to Image) &
xsetroot -cursor_name left_ptr &
#nitrogen --restore &
#sxhkd &
#polybar example & 
#exec dwm
#exec chromium
exec bspwm
#exec kitty --start-as fullscreen
