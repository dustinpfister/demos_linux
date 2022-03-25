#!/bin/bash
# loopback.sh - loop back from a start folder looking for a filename
# exit with status 0 when file name is found else exit with 1
# set a $DIR_[file basename] shell variable to the path in which the file is found

DIR_START=${1:-~};
folders=($(echo ${DIR_START} | tr "/" " "));
len=${#folders[@]}


# start at DIR_START
cd ${DIR_START};


i=$len;
while [ $i -gt 0 ]; do
    i=$[$i-1];
    echo "${i} ) ${folders[$i]}";
    echo $(pwd);
    echo "";
    cd ..;
done;


#for i in ${folders[@]}; do
#    fn="$i"
#    echo -ne "$i\n";
#        
#done;
