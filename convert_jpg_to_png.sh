#!/bin/bash

image_converter(){
cd ~/Downloads/imagens-livros2
if [ ! -d png ]
then 
    mkdir png
fi
for image in *.jpg
do
    local image_without_extension=$(ls $image | awk -F. '{ print $1 }')
    convert $image_without_extension.jpg png/$image_without_extension.png
done
}

image_converter 2>error_log.txt

if [ $? -eq 0 ]
then
	echo "Conversion performed successfully"
else
	echo "Error. There was a failure on process"
fi	
