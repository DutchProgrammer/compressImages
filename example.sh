#!/bin/bash

IMAGESPATH='/home/user/domains/domain.com/public_html/images'

#echo "Entering $IMAGESPATH"

cd $IMAGESPATH

for file in $(find . -iname '*.png'); do 

	#echo "compressing: $file -> $file.bak"
	optipng -silent -force -o7 $file && advpng --quiet -z4 "$file" && pngcrush -q -rem gAMA -rem alla -rem cHRM -rem iCCP -rem sRGB -rem time "$file" "$file.bak" && mv "$file.bak" "$file" -f
	#echo "compressed: $file";
done

for file in $(find . -iname '*.jpg'); do 

	#echo "compressing: $file"
	jpegoptim --max=90 --all-progressive --quiet -f --strip-all $file
	#echo "compressed: $file";
done

for file in $(find . -iname '*.jpeg'); do 

	#echo "compressing: $file"
	jpegoptim --max=90 --all-progressive --quiet -f --strip-all $file
	#echo "compressed: $file";
done
