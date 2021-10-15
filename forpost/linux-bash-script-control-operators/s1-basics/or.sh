#!/bin/bash
test -e ~/foo.txt || test -e ~/.bashrc; echo $?