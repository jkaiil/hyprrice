
# Start swww daemon
swww-daemon

# Give it a sec to start
sleep 0.5


# Set current wallpaper (replace with your own image path)
wall="$HOME/Pictures/Wallpapers/wallpaper1.jpg"
swww img "$wall" --transition-fps 60 --transition-step 255 --transition-type any

# Generate pywal16 colors
pywal16 --wal "$wall"

# Reload waybar
killall waybar
waybar & disown
