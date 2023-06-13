#!/bin/bash
#Take the file or folder name that will be compressed
echo -n "Enter the file or folder name to compress:"
read name
#Check the file or folder exists or not
if [[ -d "$name"  ||  -e "$name" ]]; then
    #Read filename without extension and
    #add .tar extension to create the compressed file
    filename="${name%.*}.tar"
    #Create the compressed file by using the `tar` command
    tar --create --file="$filename" "$name"
    #Print the success message
    echo "The compressed file is created successfully."
else
    #Print the error message
    echo "File or Folder name does not exist: $name"
fi
