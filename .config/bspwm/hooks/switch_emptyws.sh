#!/bin/bash

bspc subscribe node_remove | while IFS=' ' read -r e m d n r; do bspc desktop "$d"'.focused.!occupied' -f last; done
