#!/bin/bash

dir=~/js/canvas-examples
if [ -d $dir ]; then
  echo "dir IS there"
  echo "listing contents of: ${dir}"
  ls $dir
else
  echo "dir IS NOT there"
  echo "given dir was: ${dir}"
fi
