# ~/.xinitrc - 2015 05 08

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset r rate 180
xrdb ~/.Xresources
setxkbmap dvorak
setxkbmap -option compose:ralt
xflux -l 55.938546 -f -3.219342 -k 3800

exec awesome
