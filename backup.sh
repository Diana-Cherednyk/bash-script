#!/bin/bash
src=/home/diana/labs/lab_1
dest=/home/diana/backups

for file in $(find $src -printf "%P\n") ; do
    if [ -a $dest/$file ] ; then
         if [ $src/$file -nt $dest/$file ] ; then
         echo "Newer file detected, copying"
         cp -r $src/$file $dest/$file
         else
         echo "File $file exists, skipping"
         fi 
   else
   echo "$file is being copied over to $dest"
   cp -r $src/$file $dest/$file
   fi
done

