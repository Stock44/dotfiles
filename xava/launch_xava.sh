#!/bin/bash

# Terminate already running conky instances
killall -q xava

# Wait until the processes have been shut down
while pgrep -u $UID -x xava >/dev/null; do sleep 1; done

# Launch conky
xava &

echo "Conky launched..."
