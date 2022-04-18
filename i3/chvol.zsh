#!/bin/zsh

INCREMENT=5
CURRENT_VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | perl -ne '/front-left: \d+ \/\s+(\d+)%/ && print $1')
if [[ $1 = "+" ]]; then
    pactl set-sink-volume @DEFAULT_SINK@ +"$INCREMENT"%
    notify-send -h "int:value:$CURRENT_VOL" "Volume"
elif [[ $1 = "-" ]]; then
    pactl set-sink-volume @DEFAULT_SINK@ -"$INCREMENT"%
else
    echo "Unknown option"
    return 1
fi
