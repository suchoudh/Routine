########WeekNumber is 48#####***QuesAboutYesterday.sh ##################################
##   File                : QuesAboutYesterday.sh 
##   Creation DateTime   :48_20191126-22_52_52
##   Last Updated Date   :48_20191126-22_52_52 
##   Author              : Sunil Choudhary 
##   Remarks             :  
#   1) Exercise /yoga/walk
## 	badaam / nuts eat 
## 	bath 
##   2) Pooja / Temple / Meditation/Jap / Tarpan/ Yagya / Aarti 
##   3) Self Reading 
##4) Coding
##5) Good Food 
##6) Good Deed for the day 
##7) Teaching 
##8) Dhruva Spend time 
##9) Wife spend time 
##10) Art/Sketch/Draw/Paint/Computer Drawing/Pottery/
##11)Music Listen to something new 
##12) Get something for family 
##13) Eat a fresh fruit. 
##14) Drink water coppor pot ( How many glasses) 
##15) Well fitted clothes 
##16) Meet your mentors at least once a week 
##17) Call friends and wish them from time to time. 
##18) Thank God and everyone in it including your own conciousness for the pleasure of life 
##19) Start using xsv for manipulating the output csv file. 
##20) Making it file based  one parameter one file. can use epoch / date time stamp / + Param value + Base value that you want it to be. 
#21)  BathTime.log       didDuoLingo.log  DinnerTime.log  MadeBedin10.log   MyWeight.log  RevisedAWSClass.log  ThyroxingTaken.log  WalkingTime.log
#22)  BreakFastTime.log  didPocket.log    LunchTime.log   MorningPooja.log  Print365.log  SleepingTime.log     WakeUpTime.log      WashFaceArtiDi.log
# Incorporated this seq of operations from Infobeans 
# 	Start the day on time. 
# 	Exercise 
# 	Get Dressed Appropriately
# 	Set good Work Area 
# 	Decide goals for the day  
# 	Communicate abundantly with Colleagues and Customers 
# 	Take Breaks 
# 	Remember to finish on time 

# Setup a mechanism to enter comments in the values that you input
# What about mentioning the deviation instead of actual values 
# .. but then we need to ensure that calculations are also made.  
# Added extentions to demarkate them from each other 
# 	dev - for deviation from the number which i have given 
# 	BoD - for 5min Journal book and to be filled mostly in BoD
# 	EoD - for 5 min Journal and to be filled mostly in EoD 
# 	log - old extention 
# 	yn  - for yes no type answers can use 1 and 0 instead 
# 
# Create a mechanism that the script does not run if its already ran once in a day 

##########111#############################################################

# Setting up env 
export WK_DATE_TIME=`date +"%V_%Y%m%d-%H_%M_%S"`
export YESTERDAY=`date --date "-1 days"  +"%V_%Y%m%d-%H_%M_%S"`
export Routine_Home=/home/rahu/Dropbox/1600_RoutineDRAMAL/_Routine/Beta1.0

echo " This is a log for todays or yesterday " 
echo " day starts at 0000 hrs and ends at 2400 hrs" 

cd $Routine_Home # Go to root folder and cycle through all log files.  
$Routine_Home/BoD.sh
$Routine_Home/Dev.sh
$Routine_Home/YN.sh
$Routine_Home/EoD.sh

for file in *.BoD

do
# do something on $file 
clear 
echo "                                          Editing file $file" 
echo "=================File : $file =========" 
sleep 2 

echo $WK_DATE_TIME >> $file 
vi +$$ "$file" 
done
clear # clears screen 
echo Routine home is $Routine_Home 
