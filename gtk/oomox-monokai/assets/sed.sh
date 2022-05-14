#!/bin/sh
sed -i \
         -e 's/#2A2A2A/rgb(0%,0%,0%)/g' \
         -e 's/#f7f7f7/rgb(100%,100%,100%)/g' \
    -e 's/#3d3d3d/rgb(50%,0%,0%)/g' \
     -e 's/#ff6b6b/rgb(0%,50%,0%)/g' \
     -e 's/#3d3d3d/rgb(50%,0%,50%)/g' \
     -e 's/#dfdfdf/rgb(0%,0%,50%)/g' \
	"$@"
