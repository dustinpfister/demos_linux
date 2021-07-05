echo 'one' > file1.txt
echo 'two' > file2.txt
echo 'three' > file3.txt
ls file* | cat 
#file1.txt
#file2.txt
#file3.txt
ls file* | xargs cat
#one
#two
#three
ls file* | xargs cat | wc -w
#3

rm file1.txt
rm file2.txt
rm file3.txt