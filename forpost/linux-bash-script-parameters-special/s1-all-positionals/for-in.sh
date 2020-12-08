#!/bin/bash

t=0;
for num in $@; do
  t=$(( t + num ))
done;
echo $t;