
mkdir -p "foo/bar"
mkdir -p "foo/baz/foobar"

echo "foo" > "./foo/foo.txt"
echo "bar" > "./foo//bar/bar1.txt"
echo "bar" > "./foo//bar/bar2.txt"
echo "foobar" > "./foo//baz/foobar/foobar.txt"

ls foo
#bar  baz  foo.txt

rm -rd foo

ls foo
#ls: cannot access 'foo': No such file or directory