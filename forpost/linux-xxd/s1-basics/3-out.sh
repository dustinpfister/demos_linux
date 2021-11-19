#!/bin/bash
echo "Hello World" > ~/foo.txt
xxd -p ~/foo.txt ~/foo.hex.txt
cat ~/foo.txt ~/foo.hex.txt
#Hello World
#48656c6c6f20576f726c640a