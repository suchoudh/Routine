export tt=itisSetnaa 
export RoutineHome=/home/rahu/Dropbox/3400_Routine/myData
export myTemp=$RoutineHome/temp.tmp
export myNotes=$RoutineHome/notes.tmp
export DATETIME=`date +"%Y%m%d-%H_%M_%S"`
export WK_DATE_TIME=`date +"%V_%Y%m%d-%H_%M_%S"`
export YESTERDAY=`date --date "-1 days"  +"%V_%Y%m%d-%H_%M_%S"`
export WeekNum=`date +%V`
touch $NOW1/RanOn$WK_DATE_TIME.delme

# Tests below can delete 
echo $Today is today 
echo $RoutineHome
echo $myTemp 
echo $YESTERDAY
echo $WeekNum
