#!/bin/bash
yes "Hello World" | head -c 1024 > foo.txt
tar cvfz foo.tar.gz foo.txt
du -b foo.txt
#1024	foo.txt
du -b foo.tar.gz
#142	foo.tar.gz
rm foo.txt
tar xvf foo.tar.gz
# foo.txt
cat foo.txt | head -c 12
# Hello World
