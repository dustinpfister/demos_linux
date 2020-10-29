#!/bin/bash
for i in $( ls *.b64 ); do
    file=$i
    fileBaseName=$( echo -n "$file"  | cut -d '.' -f 1 )
    fileEXT=$( echo -n $file | cut -d '.' -f 2 )
    cat "${file}" | base64 -d > "${fileBaseName}.${fileEXT}"
done
echo 'done'