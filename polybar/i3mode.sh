#!/bin/sh
render_mode_section()
{
   MODE=$1 

   if [ "$MODE" = "default" ]; then
       MODE="normal"
       COLOR=$THEME_BLUE
   elif [ "$MODE" = "resize" ]; then
       COLOR=$THEME_RED
   else
       COLOR=$THEME_RED_DARK
   fi

   

   printf "%%{T2}%%{B%s}%%{F%s}  %s  %%{T-}\n" $COLOR $THEME_1000 $MODE
}

render_mode_section $(i3-msg -t GET_BINDING_STATE | perl -n -e'/\{"name":"(\w+)"\}/ && print $1')

i3-msg -t SUBSCRIBE -m '["mode"]' | while read line 
do
    render_mode_section $(echo $line | perl -n -e'/"change":"(\w+)"/ && print $1')
done
