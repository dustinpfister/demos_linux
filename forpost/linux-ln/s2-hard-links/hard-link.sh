#/bin/bash

echo "hello world" > foo.txt
ln foo.txt fooLink
rm foo.txt
cat fooLink
#hello world

# clean up
rm fooLink