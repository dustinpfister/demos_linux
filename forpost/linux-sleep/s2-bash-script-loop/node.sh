#!/bin/bash
i=1
while [ $i -lt 10 ];do
    node -e "console.log($i + 5)"
    sleep 5
    echo " "
    ((i=$i+1))
done