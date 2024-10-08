# Main Applications
Main applications which I use everyday.
1. Wayland Compositor: `hyprland`
2. Wallpaper: `hyprpaper`
3. Terminal: `alacritty`
4. Text Editor: `vim`
5. File Explorer: `Thunar` (not customised yet as I like the default look)
6. Status Bar: `waybar`
7. Menu: `wofi`

## Secondary Applications
1. Fetch: `fastfetch`
2. Colour Picker: `pywal 16 colors`
3. AUR Helper: `yay`
4. Logout: `wlogout` (not customised yet as I like the default look)
5. Screenshot: `grim` and `slurp`
6. Clipboard: `wl-clipboard` (only for terminal)
7. View contents of plain-text files: `bat`

## Fonts Used
+  Fira Code Nerd Font

## Audio Controller
+ Pavucontrol

## Useful directories to setup(`mkdir`)
+ ~/Pictures/Wallpapers
+ ~/Pictures/Screenshots

## Personal Keybinds for Hyprland
```
# Example binds
SUPER + R: Changed to SUPER + W = For WOFI

# Utility binds
F2 = Decrease Brightness by 5%
F3 = Increase Brightness by 5%
F5 = Toggle muting and unmuting the sound
F6 = Increase volume by 1%
F7 = Decrease volume by 1%
SUPER + SHIFT + B = Restart Waybar

# Screenshotting
PRT_SCR = Take a Screenshot and copy to clipboard (don't save)
SUPER + PRT_SCR = Take a Screenshot of a selected region and save it to the earlier defined screenshots folder.
SUPER + SHIFT + PRINT_SCR = Take a Screenshot of a selected region and copy to clipboard (don't save)

# Wallpapers
SUPER + ALT + W = Cycle through the Wallpapers in the earlier defined wallpapers folder.
```

**Notes**
+ For the clock module in Waybar, make sure that you have the `date.h` header file installed.
+ The files `bashrc`, `vimrc` and `bash_profile` must be converted to their dotted versions and i.e. `.bashrc`, `.vimrc`, `.bash_profile` and must be kept in the home directory.
+ I may have missed many things so please read the Arch Documentation and the GitHub documentation(for Waybar, Wofi and the Hypr project) for more information.
+ These edits are extremely minimal and almost all the scripts are written with the help of ChatGPT-4.
+ All of the XML files are not made by me but have been taken from the project repository of the respective projects (Waybar).
