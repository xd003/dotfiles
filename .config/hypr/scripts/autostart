# Kill already running process
ps=(waybar xfce-polkit xfce4-power-manager dunst)
for i in "${ps[@]}"; do
	if [[ `pidof ${i}` ]]; then
		killall -9 ${i}
	fi
done

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Set wallpaper
swaybg --output '*' --mode fill --image ~/.config/hypr/wallpapers/wallpaper.jpg &

waybar &
xfce4-power-manager &
dunst &
foot -s &
thunar --daemon &
wl-paste -t text --watch clipman store &

dunstify "Completed autostarting all apps"

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP

sleep 4
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal-wlr &
sleep 4
/usr/lib/xdg-desktop-portal &
