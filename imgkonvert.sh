#!/bin/bash
# Holiiis!
# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces size

# Sanity checks ?
# ...

# Main code

ls -1 $1*.jpg > imagefiles

while read imgfile 
do
	lengthname=${#imgfile}
	namefile=${imgfile;0;$lengthname-4}
	convert $imgfile -resize 200x200 $namefile.png	
	$ convert -rotate 90 input.jpg output.jpg
	$ convert -font helvetica -fill white -pointsize 36 -draw ‘text 10,50 “pretty kitties…” imagen.jpg imagencomentada.jpg

done < imagefile
rm imagefiles
exit 0
