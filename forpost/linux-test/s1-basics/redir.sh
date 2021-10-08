#!/bin/bash
test 5 -eq 5 && echo "Yep" > foo.txt || echo "Nope" > foo.txt
cat foo.txt
#Yep
rm foo.txt
