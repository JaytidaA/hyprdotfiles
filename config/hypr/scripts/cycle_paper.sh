#!/bin/bash

# This is the directory where you must store your wallpapers
# Can change to /usr/share/backgrounds
wallpapers_directory="$HOME/Pictures/Wallpapers"

# File to store the current number
counter_file="$HOME/.config/hypr/scripts/tmp/cycle_number.txt"
number_papers="$(ls $wallpapers_directory | wc -l)"

if [ "$number_papers" -eq 0 ]; then
    echo "No wallpapers found. Exiting..."
    exit 1
fi

# Initialize the file if it doesn't exist
if [ ! -f "$counter_file" ]; then
    echo 0 > "$counter_file"
fi

# Check if the current number is still valid
if [ "$current_number" -ge "$number_papers" ]; then
    echo "Resetting current number to 0"
    current_number=0
    echo $current_number > "$counter_file"
fi

# Read the current number from the file
current_number=$(cat "$counter_file")
file_array=($(ls "$HOME/Pictures/Wallpapers"))

# Make changes to the config
echo ${file_array[$current_number]}
$HOME/.config/hypr/scripts/change_config.sh "$wallpapers_directory/${file_array[$current_number]}"

# Calculate the next number (reset to 0 after number_papers)
if [ "$current_number" -ge "$((number_papers - 1))" ]; then
    echo 0 > "$counter_file"
else
    echo $((current_number + 1)) > "$counter_file"
fi

