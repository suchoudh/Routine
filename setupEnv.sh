#~~ ~~~~~WeekNumber is 31~~~~~***setupEnv.sh ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~   File                : setupEnv.sh 
#~~   Creation DateTime   :32_20200805-09_47
#~~   Last Updated Date   :32_20200805-09_47 
#~~   End Date	
#~~   Author              : Sunil Choudhary 
#~~   Remarks             : Changed %V to %W to correct behavoir of WeekNum in date command 
#~~                              1) This is first point 
#~~ ~~~~~~~~111~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#aaaa 
export tt=itisSetnaa 
export RoutineHome=/home/rahu/Dropbox/3400_Routine/myData
export myTemp=$RoutineHome/temp.tmp
export myNotes=$RoutineHome/notes.tmp
export DATETIME=`date +"%Y%m%d-%H_%M_%S"`
export WK_DATE_TIME=`date +"%W_%Y%m%d-%H_%M_%S"`
export YESTERDAY=`date --date "-1 days"  +"%W_%Y%m%d-%H_%M_%S"`
#export WeekNum=`date +%V`

# Tests below can delete 
echo $Today is today 
echo $RoutineHome
echo $myTemp 
echo $YESTERDAY
echo $WeekNum
#~ Ran on 32_20200805-09_47
