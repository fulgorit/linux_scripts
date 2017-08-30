#!/bin/sh

while true; do
	find /mnt/internal2/images -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 /home/masterli/scripts/feh2.sh
	sleep 15m
done
