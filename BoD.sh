########WeekNumber is 48#####***QuesAboutYesterday.sh ##################################
##   File                : QuesAboutYesterday.sh 
##   Creation DateTime   :48_20191126-22_52_52
##   Last Updated Date   :48_20191126-22_52_52 
##   Author              : Sunil Choudhary 
##   Remarks             :  
##########111#############################################################

# Setting up env 
#. ./setupEnv.sh  # Commented and to be removed as resets the Yesterday flag 
echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 
touch $NOW1/BoD_ran_on_$WK_DATE_TIME.delme

cd $RoutineHome # Go to root folder and cycle through all log files.  

for file in *.BoD

do
# do something on $file 
clear 
# ls -ltr  *.BoD 
find . -name '*.BoD' -mmin +14 -exec ls -ltrh {} \; # List files older than 14 min 
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
read -p "Press any key to resume ..."

sleep 5 

echo $WK_DATE_TIME >> $file 
vi +$$ "$file" 
done
clear # clears screen 
echo Routine home is $RoutineHome 
