#~~ ~~~~~WeekNumber is 25~~~~~***Left.sh ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~   File                : Left.sh 
#~~   Creation DateTime   :25_20200618-14_02
#~~   Last Updated Date   :25_20200618-14_02 
#~~   Author              : Sunil Choudhary 
#~~   Remarks             :  
#~~                              1) This is to process the remaining files in the system  
#~~ ~~~~~~~~111~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#aaaa 
# Setting up env 
. ./setupEnv.sh 
echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 
find . -name '*.BoD' -mmin +14 -exec ls {} \; >> myList.tmp # List files older than 14 min 

cd $RoutineHome # Go to root folder and cycle through all log files.  

for file in *.tmp

do
# do something on $file 
clear 
find . -name '*.BoD' -mmin +14 -exec ls -ltrh {} \; # List files older than 14 min 
echo "=================File : $file =========" 
echo "=================File : $file =========" 
find . -name '*.BoD' -mmin +14 -exec ls {} \; # List files older than 14 min 
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
read -p "Press any key to resume ..."

sleep 5 

done
echo Routine home is $RoutineHome 

~ Ran on 25_20200618-14_02
