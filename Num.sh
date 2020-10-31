########WeekNumber is 35 in year 2020#####***QuesAboutYesterday.sh ##################################
##   File                : Num.sh 
##   Creation DateTime   :48_20191126-22_52_52
##   Last Updated Date   :2020-09-06 Sun 10:45 PM
##   Author              : Sunil Choudhary 
##   Remarks             : Those metrics that track numerical metrics  
##########111#############################################################

# Setting up env 
. ./setupEnv.sh  # Commented and to be removed as resets the Yesterday flag 
echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 
touch $NOW1/Num_ran_on_$WK_DATE_TIME.delme

cd $RoutineHome # Go to root folder and cycle through all log files.  

for file in *NUM.*

do
# do something on $file 
clear 
ls -ltr *NUM.*    
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
read -p "Press any key to resume ..."


echo $WK_DATE_TIME >> $file 
vi +$$ "$file" 
done
clear # clears screen 
echo Routine home is $RoutineHome 
