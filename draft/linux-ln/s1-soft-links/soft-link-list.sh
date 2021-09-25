#/bin/bash

echo "hello world" > foo.txt
ln -s foo.txt fooLink
ls -la | grep "\->"
# lrwxrwxrwx 1 pi pi    7 Sep 25 10:50 fooLink -> foo.txt
