#!/bin/bash
for i in $( ls *.md ); do
    file=$i
    fileBaseName=$( echo -n "$file"  | cut -d '.' -f 1 )
    fileEXT=$( echo -n $file | cut -d '.' -f 2 )
    cat $file | base64 > "${fileBaseName}.${fileEXT}.b64"
done
echo 'done'