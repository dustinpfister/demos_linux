#/bin/bash

echo "hello world" > foo.txt
ln -s foo.txt fooLink

test -h foo.txt; echo $?
#1
test -h fooLink; echo $?
#0

# clean up
rm fooLink
rm foo.txt
