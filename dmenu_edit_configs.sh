#!/bin/bash
#   _____   __                               __
#  / ___ \ / /  ___  ___ _ ___  ___ _ ___   / /___   Hoang Seidel
# / / _ `// _ \/ _ \/ _ `// _ \/ _ `// _ \ / // _ \  github.com/hashidan/
# \ \_,_//_//_/\___/\_,_//_//_/\_, / \___//_/ \___/
#  \___/                      /___/
#
# Dmenu script for editing some of my more frequently edited config files.
# slightly copied from DistroTube
# whatev

declare options=("
bash
bspwm
compton
dunst
dwm
i3
polybar
st
sxhkd
vifm
vim
xresources
xinit
xprofile
zsh
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -nb '#282828' -nf '#ebdbb2' -p 'Edit config file: ')

case "$choice" in
        quit)
                echo "Program terminated." && exit 1
        ;;
        bash)
                choice="$HOME/.bashrc"
        ;;
        bspwm)
                choice="$HOME/.config/bspwm/bspwmrc"
        ;;
        compton)
                choice="$HOME/.config/compton/compton.conf"
        ;;
        dunst)
                choice="$HOME/.config/dunst/dunstrc"
        ;;
        dwm)
                choice="$HOME/github-clones/dwm_working_hoang/config.h"
        ;;
        i3)
                choice="$HOME/.config/i3/config"
        ;;
        polybar)
                choice="$HOME/.config/polybar/config"
        ;;
        st)
                choice="$HOME/config/st/config.h"
        ;;
        sxhkd)
                choice="$HOME/.config/sxhkd/sxhkdrc"
        ;;
        vifm)
                choice="$HOME/.config/vifm/vifmrc"
        ;;
        vim)
                choice="$HOME/.vimrc"
        ;;
        xresources)
                choice="$HOME/.Xresources"
        ;;
        xinit)
                choice="$HOME/.xinitrc"
        ;;
        xprofile)
                choice="$HOME/.xprofile"
        ;;
        zsh)
                choice="$HOME/.zshrc"
        ;;
        *)
                exit 1
        ;;
esac
st -e vim "$choice"
