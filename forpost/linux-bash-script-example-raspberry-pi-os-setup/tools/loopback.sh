#!/bin/bash
# loopback.sh - loop back from a start folder looking for a filename
# exit with status 0 when file name is found else exit with 1
# set a $DIR_[file basename] shell variable to the path in which the file is found

DIR_START=${1:-$(pwd)};
FN=${2:-rpisetup.txt};
DIR_FN="";
folders=($(echo ${DIR_START} | tr "/" " "));
len=${#folders[@]}


# start at DIR_START
cd ${DIR_START};

# loop back and try to find the file
i=$len;
while [ $i -gt 0 ]; do
    i=$[$i-1];
    #echo "${i} ) ${folders[$i]}";
    #echo $(pwd);

    ls ${FN} &> /dev/null;
    if [ $? -eq 0 ]; then
       #echo "WE FOUND ONE"
       DIR_FN=$(pwd);
       #cat ${FN}
       #echo ""
       break;
    fi;
    #echo "";
    cd ..;
done;

echo ""
if [ "${DIR_FN}" != "" ]; then
   echo "FOUND ONE"
   echo "DIR_FN = ${DIR_FN}"
fi;


#for i in ${folders[@]}; do
#    fn="$i"
#    echo -ne "$i\n";
#        
#done;
