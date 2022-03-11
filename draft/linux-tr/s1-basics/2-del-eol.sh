#!/bin/bash
head -c 512 /dev/random | xxd -p | tr -d '\n' > rnd.txt
du -b rnd.txt

