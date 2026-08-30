#!/bin/bash
choice=$(printf " LibreOffice Writer\n LibreOffice Calc\n LibreOffice Impress\n Lock\n󰤄 Sleep\n󰜉 Restart\n⏻ Shutdown\n󰭑 Logout" | wofi --dmenu --prompt "Start" --style ~/.config/wofi/style.css --location bottom_left -x 0 -y -20 --lines 8 --width 250)
case "$choice" in
    *"Writer"*)   libreoffice --writer & ;;
    *"Calc"*)     libreoffice --calc & ;;
    *"Impress"*)  libreoffice --impress & ;;
    *"Lock"*)     hyprlock & ;;
    *"Sleep"*)    systemctl suspend ;;
    *"Restart"*)  systemctl reboot ;;
    *"Shutdown"*) systemctl poweroff ;;
    *"Logout"*)   hyprctl dispatch exit ;;
esac
