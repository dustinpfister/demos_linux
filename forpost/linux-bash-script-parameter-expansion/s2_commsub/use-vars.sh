#!/bin/bash

comname="ls"
opt="-a"
uri=$( echo ~ )
i=0
for item in $( ${comname} ${opt} ${uri} ); do
    echo "${i} ${item}"
    i=$(( i + 1 ))
done

