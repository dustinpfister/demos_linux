
mkdir -p "foo/bar"
mkdir -p "foo/baz/foobar"

echo "foo" > "./foo/foo.txt"
echo "bar" > "./foo//bar/bar1.txt"
echo "bar" > "./foo//bar/bar2.txt"
echo "foobar" > "./foo//baz/foobar/foobar.txt"
