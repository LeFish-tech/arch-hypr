#!/bin/bash
THEMES=$(find ~/.config/hypr/themes -mindepth 1 -maxdepth 1 -type d | sort)
LINES=$(echo "$THEMES" | wc -l)
MENU_ITEMS=""

for theme_path in $THEMES; do
    theme=$(basename "$theme_path")
    case "$theme" in
        purple) icon="⬢" ;;
        sea)    icon="🦈" ;;
        rei)    icon="✝" ;;
        xp)     icon="󰍲" ;;
        *)      icon="󰉋" ;;
    esac
    MENU_ITEMS+="$icon $theme\n"
done

choice=$(printf "$MENU_ITEMS" | wofi --dmenu --prompt "Theme" --style ~/.config/wofi/style.css --lines $LINES)

[ -n "$choice" ] && {
    theme=$(echo "$choice" | awk '{print $2}')
    ~/.config/hypr/scripts/switch-theme.sh "$theme"
}
