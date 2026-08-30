#!/bin/bash

THEME=$1
THEME_DIR=~/.config/hypr/themes/$THEME

# Wallpaper
swaybg -i $THEME_DIR/wallpaper.jpg -m fill &

# Waybar
cp $THEME_DIR/waybar-style.css ~/.config/waybar/style.css
cp $THEME_DIR/waybar-config ~/.config/waybar/config
pkill waybar && waybar &disown

# Dunst
cp $THEME_DIR/dunstrc ~/.config/dunst/dunstrc
pkill dunst && dunst &disown

# Wofi
cp $THEME_DIR/wofi-style.css ~/.config/wofi/style.css

# Kitty
cp $THEME_DIR/kitty.conf ~/.config/kitty/kitty.conf

# Starship
cp $THEME_DIR/starship.toml ~/.config/starship.toml

# Hyprlock
cp $THEME_DIR/hyprlock.conf ~/.config/hypr/hyprlock.conf

# Swaylock
cp $THEME_DIR/swaylock.conf ~/.config/swaylock/config

# Fastfetch
cp $THEME_DIR/fastfetch-art.txt ~/myart.txt
cp $THEME_DIR/fastfetch-config.jsonc ~/.config/fastfetch/config.jsonc

# Hyprland.conf
cp $THEME_DIR/hyprland.conf ~/.config/hypr/hyprland.conf

# SDDM Wallpaper
cp $THEME_DIR/login.jpg /usr/sddm/themes/sddm-astronaut-theme/Backgrounds

echo "$THEME" > ~/.cache/current-theme
