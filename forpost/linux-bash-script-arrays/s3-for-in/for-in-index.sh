#!/bin/bash

files=('file1' 'file2' "file3")
for fileIndex in ${files[@]}; do
    echo ${fileIndex}
done;
