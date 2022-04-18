#!/bin/sh
xprop -spy -root _NET_ACTIVE_WINDOW | while read line
do
    WIN_ID=$(echo $line | perl -ne '/# ([0123456789abcdef]x[0123456789abcdef]+)/ && print $1')
    if [ "$WIN_ID" != "0x0" ]; then
        CLASS=$(xprop -id $WIN_ID WM_CLASS | perl -ne '/"([^"]+)"/ && print $1')
        TITLE=$(xprop -id $WIN_ID WM_NAME | perl -ne '/"([^"]+)"/ && print $1' | cut -b1-50)
        if [ -n "$CLASS" ]; then
            printf "%%{B%s}%%{F%s}  %s %%{F%s}%s  \n" $THEME_900 $THEME_RED "$CLASS" $THEME_50 "$TITLE"
            else
            printf "%%{B%s}%%{F%s}  %s  \n" $THEME_900 $THEME_50 "$TITLE"
        fi
    else 
       echo 
    fi
done
