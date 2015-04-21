#!/bin/bash
# Hola cocacola

# Script to convert all mage files from a directory (parameter) into png format file
# it also reduces sizej

# Sanity checks ?
# ...

# Main code

ls -1 $1/*.jpg > imagefiles


while read imgfile 
do
	lengthname=${#imgfile}
	namefile=${imgfile:0:$lengthname-4}
	echo $namefile
	#convert $imgfile -resize 200x200 "$namefile".png	
	convert $imgfile -rotate 90 "$namefile".jpg
	convert $imgfile -font helvetica -fill white -pointsize 36 -draw ‘text 10,50 “pretty babies…”"$namefile".gif
	convert $imgfile.png -colorspace Gray "$namefile".png
	for i in *.JPG; do convert -verbose $i $i.gif; done
	convert -delay 20 -loop 0 -verbose IMG_31*.gif animacion.gif

done < imagefiles
rm imagefiles
exit 0
