#! /bin/sh
#
# Qtile launch script
#
# Setting up monitors

xrandr --output DP-4 --auto --mode 2560x1440@144 --primary 

# Display power management

xset s off -dpms

# Launch startup programs

feh --bg-scale --randomize ~/Storage/Pictures/Wallpaper/* &		# Set random desktop wallpaper
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &	# Graphical authentication agent
nm-applet &							# Network manager systemtray applet
picom &
synology-drive --background &

# Launch Qtile

exec qtile start

