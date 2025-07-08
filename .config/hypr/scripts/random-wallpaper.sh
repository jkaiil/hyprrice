
# Directory containing wallpapers
wall_dir="$HOME/Pictures/Wallpapers"

# Start swww-daemon if not already running
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 1  # wait briefly to ensure it's ready
fi

killall waybar
# Pick random image from folder
wall=$(find "$wall_dir" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Apply with circle transition
swww img "$wall" --transition-fps 60 --transition-step 255 --transition-type any --transition-duration 1

sleep 1
# Update pywal16 colors
wal -i "$wall"

sleep 1
# Reload waybar
waybar & disown