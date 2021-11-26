#!/bin/bash
head -c 1024 /dev/random | xxd -p > rnd.txt
tar -czf rnd.tar.gz rnd.txt
du -b rnd.txt
#2083	rnd.txt
du -b rnd.tar.gz
#1327	rnd.tar.gz
