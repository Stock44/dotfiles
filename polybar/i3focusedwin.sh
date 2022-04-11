#!/bin/sh

FOCUSED_WIN_PROPS=$(xprop -id $(xdotool getwindowfocus))
CLASS=$(echo $FOCUSED_WIN_PROPS | perl -n -e'/WM_CLASS\(STRING\) = "([^"]+)"/ && print $1')
TITLE=$(echo $FOCUSED_WIN_PROPS | perl -n -e'/WM_NAME\((?:UTF8_)?STRING\) = "([^"]+)"/ && print $1')

if [ -n "$CLASS" ]; then
    printf "%%{B%s}%%{F%s}  %s %s  \n" $THEME_900 $THEME_50 "$CLASS" "$TITLE"
else
    printf "%%{B%s}%%{F%s}  %s  \n" $THEME_900 $THEME_50 "$TITLE"
fi
