#!/bin/bash

#bspc subscribe node_remove | while IFS=' ' read -r e m d n r; do bspc desktop "$d"'.focused.!occupied' -f  'last.occupied'; done
bspc subscribe node_remove | while IFS=' ' read -r e m d n r; do for sel in last.occupied prev.occupied '^1'; do bspc desktop "$d"'.focused.!occupied' -f "$sel" && continue; done; done
