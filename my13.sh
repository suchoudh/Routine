########WeekNumber is 11#####***my13.sh ##################################
##   File                : my13.sh 
##   Creation DateTime   :11_20200313-19_52
##   Last Updated Date   :11_20200313-19_52 
##   Author              : Sunil Choudhary 
##   Remarks             :  This is for reporting for all my 13 parameters for daily tracking 
##                              1) This is first point 
## cat "$file"| grep -v "#" >>$myOutFile
##########111#############################################################
#aaaa 
. ./setupEnv.sh 
echo $Today
echo "$YESTERDAY is yesterday"
echo $RoutineHome/_temp.txt 
echo $RoutineHome/_notes.txt 
#! /bin/bash
histo="=====88================================================================+"
for file in $RoutineHome/*.dev  # for all *.log files in this folder  -- 1 
do 
cat $file| grep -v "#" >$myTemp
cat $file| grep  "#" >>$myNotes
$RoutineHome/_workingReport.sh<$myTemp 
sleep 1 
echo '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
done # ends the all log files --- 1 
read -p "Now check my observations... "
cat $myNotes

# Ran on 11_20200313-19_52
