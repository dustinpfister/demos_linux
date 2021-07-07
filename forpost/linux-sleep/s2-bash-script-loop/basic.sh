#!/bin/bash
i=1
while [ $i -lt 10 ];do
    echo "$i"
    sleep 3
    echo " "
    ((i=$i+1))
done