#!/bin/bash
# Holiiis!
# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces size

# Sanity checks ?
# ...

# Main code

ls -1 $1/*.jpg > imagefiles
cat imagefiles
while read imgfile 
do
	echo "IMG File: $imgfile"
	lengthname=${#imgfile}
	echo "Lenght: $lengthname"
	namefile=${imgfile:0:$lengthname-6}
	echo "namefile: $namefile"

	convert $imgfile -negate -blur 13x13 -resize 125x125 $namefile.png	


done < imagefiles
rm imagefiles
exit 0
 
