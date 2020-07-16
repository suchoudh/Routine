########WeekNumber is 48#####***QuesAboutYesterday.sh ##################################
##   File                : QuesAboutYesterday.sh 
##   Creation DateTime   :48_20191126-22_52_52
##   Last Updated Date   : 2020-05-12 Tue 10:09 PM
##   Author              : Sunil Choudhary 
##   Remarks             :  
##########111#############################################################

# Setting up env 
#. ./setupEnv.sh  # REsets the yesterday flag. 
touch $NOW1/EoDranon$WK_DATE_TIME.delme

echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 

cd $RoutineHome # Go to root folder and cycle through all log files.  

for file in *.EoD

do
# do something on $file 
clear 
find . -name '*.EoD' -mmin +14 -exec ls -ltrh {} \;
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
sleep 2 
read -p " press key to continue " 

echo $WK_DATE_TIME >> $file 
vi +$$ "$file" 
done
clear # clears screen 
echo Routine home is $RoutineHome 
