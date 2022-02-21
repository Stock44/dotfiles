#!/bin/sh

[[ (-n "pidof i3lock") ]] && i3lock \
--color=$THEME_FG \
--insidever-color=$THEME_BG   \
--ringver-color=$THEME_ORANGE     \
\
--insidewrong-color=$THEME_BG \
--ringwrong-color=$THEME_RED   \
\
--inside-color=$THEME_BG      \
--ring-color=$THEME_BG      \
--line-color=$THEME_BG        \
--separator-color=$THEME_BG   \
\
--verif-color=$THEME_ORANGE        \
--wrong-color=$THEME_RED        \
--time-color=$THEME_FG        \
--date-color=$THEME_FG        \
--layout-color=$THEME_FG      \
--keyhl-color=$THEME_BLUE     \
--bshl-color=$THEME_RED       \
\
--screen 0            \
              \
--clock               \
--indicator           \
--time-str="%H:%M"  \
--date-str="%d/%m/%Y" \
--keylayout 1         \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
