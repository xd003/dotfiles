#!/bin/sh --

class=$2
eval " $4"

if [ "$manage" = on ]; then
    tries=3
    while [ "$(( tries -= 1 ))" -ge 0 ]; do
        if id=$(bspc query -D -d "%$class"); then
            printf 'follow=on desktop=%s\n' "$id"
            break
        else
            bspc monitor -a "$class"
        fi
    done
fi
