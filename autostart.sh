#! /bin/sh
#
# Qtile launch script
#
# Setting up monitors

xrandr --output DP2 --auto --mode 1920x1080 --primary 
xrandr --output DP1 --auto --mode 1920x1080 --right-of DP2

# Display power management

xset s off -dpms

# Launch startup programs

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &	# Graphical authentication agent
nm-applet &							# Network manager systemtray applet
volumeicon &							# Volume applet for systemtray

# Launch Qtile

exec qtile start
