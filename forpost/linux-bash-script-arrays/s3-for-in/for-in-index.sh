#!/bin/bash

files=('file1' 'file2' "file3")
for fileName in ${files[@]}; do
    echo ${fileName}
done;
