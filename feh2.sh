#!/bin/bash
echo "$1" >> /home/masterli/history_wallpapers.txt
feh "$1" --bg-scale

