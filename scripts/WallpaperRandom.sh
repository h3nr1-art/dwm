#!/bin/bash
## /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for Random Wallpaper ( CTRL ALT W)

wallDIR="$HOME/wallpaper/"
scriptsDir="$HOME/.config/hypr/scripts"

PICS=($(find ${wallDIR} -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
RANDOMPICS=${PICS[$RANDOM % ${#PICS[@]}]}
ln -s -f ${RANDOMPICS} "${HOME}/.cache/wallpaper_link"

# Transition config

wal -i ${RANDOMPICS}
sleep 0.2
pywal-zathura
pywalfox update
pywal-discord default
spicetify config current_theme spicewal
spicetify config color_scheme spicewal
spicetify apply
