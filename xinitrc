if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Set 180ms keyboard delay
xset r rate 180

# Mouse accel shite
xset m 1/1 0
xrdb ~/.Xresources
xmodmap ~/.Xmodmap

setxkbmap dvorak
# Compose key
setxkbmap -option compose:ralt
# Disable caps lock
setxkbmap -option caps:none
# Remove mouse accel
xset s 0 0
xset -dpms
#export STEAM_RUNTIME=0

if [[ ${HOST} != "gurgeh.vaunt.eu" ]]; then
	# Prevents the touchpad being utilised while typing
	syndaemon -i 0.75 -t -K -R -d
fi

exec awesome

# vim: syntax=sh
