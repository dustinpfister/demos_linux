# linux-ln todo list

## () start an sx section on soft links in /usr/local/bin folder
* a section on making soft links in the the /usr/local/bin folder
* copy a nodejs 14.x folder to /usr/local/lib
* create a /usr/local/bin/node14 soft link to /user/local/lib/node14/bin/node
* create a /user/local/bin/npm-node14 soft link to /user/local/lib/node14/bin/npm

## (done 10/01/2021 ) start an s3 section on the force option
* (done) just one force option example so for now

## ( done 10/01/2021 ) start an s2 section on hard links
* (done) the basic example should create a file, and then a hard link to it
* (done) delete the source file
* (done) then call the hard link

## ( done 09/25/2021 ) - first set of examples
* (done) s1-basic/soft-link.sh: use linux echo and redirection to create a foo.txt
* (done) s1-basic/soft-link.sh: have a basic example of using the ln command to create a soft link to foo.txt
* (done) s1-basic/soft-link-list.sh: use the ls command to list files that are soft links
* (done) s1-basic/soft-link-test: use stat command to test for a soft link