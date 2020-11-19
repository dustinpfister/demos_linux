#!/bin/bash
for i in $( ls *.b64 ); do
    file=$i
    fileBaseName=$( echo -n "$file"  | cut -d '.' -f 1 )
    fileEXT=$( echo -n $file | cut -d '.' -f 2 )
    outfile="${fileBaseName}.${fileEXT}"
    cat "${file}" | base64 -d > "$outfile"
done
echo 'done'