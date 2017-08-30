#!/bin/bash

#ebook-convert 1449319793_Pyth.epub 1449319793_Pyth_11.pdf --margin-left 76.0 --margin-right 76.0 --margin-top 76.0 --margin-bottom 76.0

in=$1
out=$2

ebook-convert $1 $2 --margin-left 76.0 --margin-right 76.0 --margin-top 76.0 --margin-bottom 76.0

