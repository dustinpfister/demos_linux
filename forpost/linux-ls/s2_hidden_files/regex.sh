echo "hello" > hello.txt
echo "I hide things" > .hide.txt
ls .[^.]*
#.hide.txt

rm hello.txt
rm .hide.txt