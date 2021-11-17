#!/bin/bash
cat notthere.txt
#cat: notthere.txt: No such file or directory
cat notthere.txt 2> /dev/null
