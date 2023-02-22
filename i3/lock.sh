#!/bin/sh

[[ (-n "pidof i3lock") ]] && i3lock \
--color=$THEME_1100 \
--insidever-color=$THEME_1100   \
--ringver-color=$THEME_ORANGE     \
\
--insidewrong-color=$THEME_1100 \
--ringwrong-color=$THEME_RED   \
\
--inside-color=$THEME_1100      \
--ring-color=$THEME_1000      \
--line-color=$THEME_1000        \
--separator-color=$THEME_1000   \
\
--verif-color=$THEME_ORANGE        \
--wrong-color=$THEME_RED        \
--time-color=$THEME_200        \
--date-color=$THEME_200        \
--layout-color=$THEME_200      \
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
\
#--wrongtext="Wrong password"

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
