#!/bin/sh
#
# Github savouring by 0xFED
# 
#Usage:
# Change to the directory containing all the directories created by chug.sh
#./savour.sh 
#
#Note: Real men cron this.
#
# Version History:
# v0.1 - Worked on the first try.

for d in */ ; do
    echo "$d"
    cd $d
    find . -mindepth 1 -maxdepth 1 -type d -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
    cd ..

done
