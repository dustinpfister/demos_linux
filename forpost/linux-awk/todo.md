
## () - 
* s4 example of an array
* s5 example that makes use of an array with the match function

## () - append text to begging and end of each line
```
$ ls video[0-9]*.mp4 | awk '{ printf "file \x27%s\x27\n", $0 }' > videos.txt
```

## ( done 2021/07/02 ) - first set of examples
* (done) s1 - basic example where I am just printing the first feild of each line
* (done) s2 - An example where I am just printing lines that match a static pattern
* (done) s3 - make an example where I am just matching digits found in each line
https://www.tek-tips.com/viewthread.cfm?qid=1459823
