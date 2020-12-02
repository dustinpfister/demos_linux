#!/bin/bash

a="3"
b="5"
if [ $a -gt $b ]; then
  echo "${a} is greater than ${b}"
else
  echo "${a} IS NOT greater than ${b}"
fi
echo "done"