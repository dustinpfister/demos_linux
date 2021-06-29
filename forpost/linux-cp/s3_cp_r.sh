
mkdir -p "./text/foo"

echo -n "foobar" > "./text/foo/foo1.txt"
echo -n "foobar" > "./text/foo/foo2.txt"
echo -n "foobar" > "./text/bar1.txt"

cp -r "text" "text_copy"