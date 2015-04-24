#!/bin/bash

# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces size
#editado
# Sanity checks ?
# ...
#A ver si a la tercera
# Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles

while read imgfile 
do
	echo "IMG file: $imgfile"
	lengthname=${#imgfile}
	echo "length: $lengthname"
	namefile=${imgfile:0:$lengthname-4}
	echo "namefile: $namefile"
	convert $imgfile -resize 200x200 "$namefile.png"	
	convert  -rotate 90 $imgfile $namefile"_rotate.gif"
	#echo $imgfile $namefile"_sepia.jpg"
	convert  -sepia-tone 90% $imgfile $namefile"_sepia.jpg"
	



done < imagefiles
rm imagefiles
exit 0
