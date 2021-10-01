#/bin/bash

echo "hello world" > foo.txt
echo "hello other World" > foo2.txt

ln -s foo.txt fooLink
cat fooLink
#hello world
ln -sf foo2.txt fooLink
cat fooLink


# clean up
rm fooLink
rm foo.txt
rm foo2.txt