#!/bin/bash
# 2-bashrc.sh - check out the sich with .bashrc
#    * use the given source file path for a backrc file to set at home
#    * check for a .bashrc_backup
#        * if there is one do nothing
#        * if there is no .bashrc_backup check for a .bashrc file
#            * if there is a .bashrc create a .bashrc_backup from that file
#            * if there is no .bashrc file create a .bashrc_backup that is the same as the source file
#    * write a new .bashrc file at home

PATH_SOURCE=$(realpath ${1:-../bashrc.txt});

echo -e "Uisng source file for .bashrc found at: ${PATH_SOURCE} \n";

# cd to home
cd ~;

# check for .bashrc_backup file
if [ ! -f ".bashrc_backup" ]; then
   echo "NO .bachrc_backup file found"
   # check for a .bachrc file, if there is one create a backup
   if [ -f ".bashrc" ]; then
       echo ".bashrc file found, creating .bashrc_backup from that";
       cat .bashrc > .bashrc_backup;
   fi
   # no .bashrc!? then create one from source file
   if [ ! -f ".bashrc" ]; then
       echo "NO .bashrc file found! Creating .bashrc_backup from source file.";
       cat ${PATH_SOURCE} > .bashrc_backup;
   fi
fi

# now that we have a backup for .bashrc sets write a new one from the source
cat ${PATH_SOURCE} > .bashrc;
