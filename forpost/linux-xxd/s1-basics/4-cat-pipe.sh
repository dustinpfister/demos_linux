#!/bin/bash
echo "Hello World" > ~/foo.txt
echo "Bar and foo" > ~/bar.txt
echo "I want a zoo" > ~/zoo.txt
cat ~/foo.txt ~/bar.txt ~/zoo.tzt | xxd -p > ~/fbz.hex.txt
cat ~/fbz.hex.txt
#48656c6c6f20576f726c640a42617220616e6420666f6f0a
