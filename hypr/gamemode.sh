#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | sed -n '2p' | awk '{print $2}')

# SWWW
if [ $HYPRGAMEMODE = 1 ]; then
  killall swww-daemon 
fi
 swww init &

# Waybar performance
if [ $HYPRGAMEMODE = 1 ]; then
 killall waybar
fi
 waybar || killall waybar &

# Hyprland performance
if [ $HYPRGAMEMODE = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    exit
fi
hyprctl reload
