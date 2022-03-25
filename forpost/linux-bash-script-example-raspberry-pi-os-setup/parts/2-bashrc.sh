#!/bin/bash
# 2-bashrc.sh - check out the sich with .bashrc
#    * use the given source file path for a backrc file to set at home
#    * check for a .bashrc_backup
#        * if there is one do nothing
#        * if there is no .bashrc_backup check for a .bashrc file
#            * if there is a .bashrc create a .bashrc_backup from that file
#            * if there is no .bashrc file create a .bashrc_backup that is the same as the source file

PATH_SOURCE=$(realpath ${1:-../bashrc.txt});

echo -e "Uisng source file for .bashrc found at: ${PATH_SOURCE} \n";