hyprpaper_text="preload=$1\nwallpaper=eDP-1,$1"

# Remove the old config file
rm $HOME/.config/hypr/hyprpaper.conf

# Write new config with newline between entries
echo -e "$hyprpaper_text" > $HOME/.config/hypr/hyprpaper.conf

# Restart hyprpaper with new wallpaper
killall hyprpaper && hyprpaper &

# Generate the colourscheme using wal
wal -i "$1" --cols16

# Restar Waybar to apply theme
killall waybar && waybar &
