#!/bin/bash

#                         ___ __  _                   __
#   _________  ____  ____/ (_) /_(_)___  ____  ____ _/ /
#  / ___/ __ \/ __ \/ __  / / __/ / __ \/ __ \/ __ `/ / 
# / /__/ /_/ / / / / /_/ / / /_/ / /_/ / / / / /_/ / /  
# \___/\____/_/ /_/\__,_/_/\__/_/\____/_/ /_/\__,_/_/   
# Conditional                                                     

# Force floating mode
declare -a floats=(Alafloat Lxappearance Arandr
	Viewnior Nm-connection-editor Matplotlib
	Yad Gnome-disks SimpleScreenRecorder PureRef
	Font-manager Gnome-system-monitor Gcolor3 flameshot Blueberry.py
	Pavucontrol jamesdsp Nvidia-settings Nitrogen Peazip
	Xfce4-appearance-settings Xfce4-mouse-settings
	parsecd Galculator com.github.joseexposito.touche
	XVkbd usbguard-applet-qt instagram-live-streamer
	Mumble qimgv Peek)
for i in "${floats[@]}"; do
	bspc rule -a "$i" manage=on state=floating follow=on focus=on center=true
done

# Force tile windows
declare -a tiled=(Zathura)
for i in "${tiled[@]}"; do
	bspc rule -a "$i" manage=on state=tiled
done

# Force full screen windows
declare -a fullscreen=(mpv)
for i in "${fullscreen[@]}"; do
	bspc rule -a "$i" manage=on state=fullscreen
done
