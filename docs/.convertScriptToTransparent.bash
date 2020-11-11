#!/bin/bash

#
# Use ImageMagick to convert the white background of the graphic file
# to transparent
#   This mostly works.   Can also convert TIF to PNG at the same time.
#

for i in *.png
do
 echo $i
 convert  $i -fuzz 3% -transparent white -alpha on -verbose -background transparent PNG/"${i%.*}".png
done


