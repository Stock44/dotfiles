#!/bin/zsh

screen_size=$(xrandr | grep ' connected' | grep -Eo '[0-9]+x[0-9]+')

IFS=$'\n'
screen_sizes=("${(@f)$(echo $screen_size)}")

# reversing because in my personal setup the primary monitor appears after the secondary one in xrandr
screen_sizes=("${(@Oa)screen_sizes}")

feh_command="feh --bg-max"

for i ("$screen_sizes[@]")
do
    echo size: "$i"
    feh_command="$feh_command $(shuf -n 1 -e ~/Pictures/wallpapers/$i/*)"
done

echo $feh_command
eval "$feh_command"
