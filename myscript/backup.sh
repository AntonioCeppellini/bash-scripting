#!/bin/bash
dest=/Desktop/bashlearning
source=/Downloads
for file in $(find $source -printf "%P\n") ; do
if [ -a $dest/$file ] ; then 
if [ $source/$file -nt $dest/$file ] ; then
echo "newer file detected, copying..."
cp -r $source/$file $dest/$file
else echo "file $file exists, skipping"
fi
else
echo "$file is being copied over to $dest"
cp -r $source/$file $dest/$file
fi
done

#use cronetab to set when and how often do you want this script to be launched
