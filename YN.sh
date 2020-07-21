########WeekNumber is 48#####***QuesAboutYesterday.sh ##################################
##   File                : QuesAboutYesterday.sh 
##   Creation DateTime   :48_20191126-22_52_52
##   Last Updated Date   :2020-05-10 Sun 07:29 PM 
##   Author              : Sunil Choudhary 
##   Remarks             :  
# 	yn  - for yes no type answers can use 1 and 0 instead 
# 


##########111#############################################################
# . ./setupEnv.sh # resets yesterday flag must remove 

echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 
echo $myTemp  $RoutineHome is this 
touch $NOW1/YN_RanOn$WK_DATE_TIME.delme

cd $RoutineHome # Go to root folder and cycle through all log files.  
echo "Use Dijo for YN" # 2020-07-21 Tue 05:25 PM trial phase 
for file in *.yn

do
# do something on $file 
find . -name '*.yn' -mmin +14 -exec ls -ltrh {} \;
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
read -p "Press any key to resume ..."  
echo $WK_DATE_TIME >> $file 
vi +$$ "$file" 
done
clear # clears screen 
echo Routine home is $RoutineHome 
