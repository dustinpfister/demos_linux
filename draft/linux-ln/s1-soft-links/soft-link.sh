#/bin/bash

echo "hello world" > foo.txt
ln -s foo.txt fooLink
cat fooLink
#hello world