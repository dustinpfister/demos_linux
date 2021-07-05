
mkdir "foo"
ls -d */
#foo/

rm -d foo
ls -d */
#ls: cannot access '*/': No such file or directory

