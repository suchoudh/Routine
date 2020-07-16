#!/bin/bash
###
### my-script — does one thing well
###
### Usage:
###   my-script <input> <output>
###
### Options:
###   <input>   Input file to read.
###   <output>  Output file to write. Use '-' for stdout.
###   -h        Show this message.

help() {
    sed -rn 's/^### ?//;T;p' "$0"
}

if [[ $# == 0 ]] || [[ "$1" == "-h" ]]; then
    help
#    exit 1
fi


. ./setupEnv.sh 
touch $NOW1/DQRanOn$WK_DATE_TIME.delme 
/home/rahu/Dropbox/3400_Routine/Options.sh -b t 
/home/rahu/Dropbox/3400_Routine/Options.sh -d y  
/home/rahu/Dropbox/3400_Routine/Options.sh -e y  
/home/rahu/Dropbox/3400_Routine/Options.sh -y y 
#/home/rahu/Dropbox/3400_Routine/Options.sh -b t -d y -e y -y y 

