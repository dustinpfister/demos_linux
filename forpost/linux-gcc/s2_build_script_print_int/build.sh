#!/bin/bash
buildName=$( echo $1 | cut -d . -f 1 )
gcc -Wall "$1" -o "$buildName"