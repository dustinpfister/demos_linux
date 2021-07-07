#!/bin/bash
i=1
while [ $i -lt 10 ];do
    js="console.log(Math.pow(2, $i))"
    echo -en "running javaScript: $js\n"
    node -e "$js"
    sleep 5
    echo -en "done\n\n"
    ((i=$i+1))
done