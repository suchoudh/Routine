########WeekNumber is 48#####***QuesAboutYesterday.sh ##################################
##   File                : QuesAboutYesterday.sh 
##   Creation DateTime   :48_20191126-22_52_52
##   Last Updated Date   :48_20191126-22_52_52 
##   Author              : Sunil Choudhary 
##   Remarks             : Entry point is Options.sh and not to be used without it 

##########111#############################################################
# . ./setupEnv.sh  # Must remove as resets the yesterday flag. 
echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 
touch $NOW1/Dev_RanOn$WK_DATE_TIME.delme

cd $RoutineHome # Go to root folder and cycle through all log files.  

for file in *.dev

do
# do something on $file 
clear 
#ls -ltr  *.dev
find . -name '*.dev' -mmin +14 -exec ls -ltrh {} \;
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
read -p "Press any key to resume ..."

echo $WK_DATE_TIME >> $file 
vi +$$ "$file" 
done
clear # clears screen 
echo Routine home is $RoutineHome 
