#!/bin/bash

# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces size
#editado
# Sanity checks ?
# ...

# Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles

while read imgfile 
do
	echo "IMG file: $simgfile"
	lengthname=${#imgfile}
	echo "length: $lengthname"
	namefile=${imgfile:0:$lengthname-4}
	echo "namefile: $namefile"
	convert $imgfile -resize 200x200 $namefile.png	
	convert $imgfile-rotate 90 “$namefile”.jpg
	convert $imgfile -font helvetia -fill white -pointsize 36 -draw text 10,50 "pretty babies...""$namefile".gif
	convert $imgfile.png -colorspace Gray "$namefile".png
	



done < imagefiles
rm imagefiles
exit 0
