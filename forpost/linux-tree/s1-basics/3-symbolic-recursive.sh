#!/bin/bash
mkdir -p foo/bar
echo "Hello" > foo/f1.txt
echo "World" > foo/f2.txt
echo "Hello World" > foo/bar/f3.txt
cd foo
ln -s . baz
tree -I foo
#foo
#├── bar
#│   └── f3.txt
#├── f1.txt
#└── f2.txt
#
#1 directory, 3 files
