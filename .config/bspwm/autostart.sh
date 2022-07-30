#!/bin/bash

declare -a loop=(xbanish flameshot touchegg dunst)
for i in "${loop[@]}"; do
	pgrep -x "$i" | xargs kill
  $i &
done
