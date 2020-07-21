########WeekNumber is 17#####***Options.sh ##################################
##   File                : Options.sh 
##   Creation DateTime   :17_20200421-21_56
##   Last Updated Date   :2020-07-11 Sat 01:33 AM
##   Author              : Sunil Choudhary 
##   Remarks             :  
# Setup a mechanism to enter comments in the values that you input
# What about mentioning the deviation instead of actual values 
# .. but then we need to ensure that calculations are also made.  
# Added extentions to demarkate them from each other 
# 	dev - for deviation from the number which i have given 
# 	BoD - for 5min Journal book and to be filled mostly in BoD
# 	EoD - for 5 min Journal and to be filled mostly in EoD 
# 	log - old extention 
# 	yn  - for yes no type answers can use 1 and 0 instead 
# 	2020-05-24 Sun 12:31 PM : Added option of yesterday and today in date stamp 
# 	2020-07-16 Thu 04:57 PM: added data elsewhere  sans the data  files which are individual to me) 
# 	Need to add : What are my lowest metrics for today, last 7 days , last 30 days , overall
	# I am using ANKi for reminding me as well from time to time. 
##########111#############################################################

# Setting up env 
. ./setupEnv.sh 

#cd $RoutineHome # Go to root folder and cycle through all log files.  
cd /home/rahu/Dropbox/3400_Routine  # moved data to myData

#===
while getopts ":b:d:e:y:h:" opt; do
  case $opt in
    b)
      echo "-b was triggered, Parameter: $OPTARG" >&2
	read -p " you said $OPTARG"

	if [ $OPTARG = "y" ]
	then
		# If flag is set to y then set it to yesterday
		export WK_DATE_TIME=$YESTERDAY
	fi 

      ./BoD.sh 
      ;;
    d)
      echo "-d was triggered, Parameter: $OPTARG" >&2
	echo " you said $OPTORG"
	if [ $OPTARG = "y" ]
	then
		# If flag is set to y then set it to yesterday
		export WK_DATE_TIME=$YESTERDAY
	fi 

      ./Dev.sh 
      ;;
    e)
      echo "-e was triggered, Parameter: $OPTARG" >&2
	echo " you said $OPTORG"
	if [ $OPTARG = "y" ]
	then
		# If flag is set to y then set it to yesterday
		export WK_DATE_TIME=$YESTERDAY
	fi 
      ./EoD.sh 
      ;;
    y)
      echo "-a was triggered, Parameter: $OPTARG" >&2
	echo " you said $OPTORG"
	if [ $OPTARG = "y" ]
	then
		# If flag is set to y then set it to yesterday
		export WK_DATE_TIME=$YESTERDAY
	fi 
      ./YN.sh 
      ;;
    h)
      echo "-h arg1 is for Help $OPTARG" >&2
      echo " -b arg1 is for BoD" 
      echo " -d arg1 is for Deviations"
      echo " -e arg1 is for EoD"
      echo " -y arg1 is for Yes/No"
      echo " y as option is for yesterday " 
      echo " t ( or anything other than y) is for today " 
      echo " ./Options.sh -b t -d y -e y -y y "
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      #echo "Option -$OPTARG requires an argument." >&2
      echo " ./Options.sh -b t -d y -e y -y y "
      exit 1
      ;;
  esac
done
#=== Cleanup the temp files == 
echo $WK_DATE_TIME > temp.tmp
echo $WK_DATE_TIME > notes.tmp

# Ran on 17_20200421-21_56
