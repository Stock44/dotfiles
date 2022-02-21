#!/bin/bash

# Terminate already running bar instances
killall -q wired

# Wait until the processes have been shut down
while pgrep -u $UID -x wired >/dev/null; do sleep 1; done

wired &

echo "wired-notify launched..."
