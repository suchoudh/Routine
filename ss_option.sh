########WeekNumber is 17#####***Options.sh ##################################
##   File                : Options.sh 
##   Creation DateTime   :17_20200421-21_56
##   Last Updated Date   :17_20200421-21_56 
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
# 
##########111#############################################################

# Setting up env 
export WK_DATE_TIME=`date +"%V_%Y%m%d-%H_%M_%S"`
export YESTERDAY=`date --date "-1 days"  +"%V_%Y%m%d-%H_%M_%S"`
export Routine_Home=/home/rahu/Dropbox/1600_RoutineDRAMAL/_Routine/Beta1.0
export WK_DATE_TIME=$YESTERDAY

cd $Routine_Home # Go to root folder and cycle through all log files.  


#===
while getopts ":b:d:e:y:h:" opt; do
  case $opt in
    b)
      echo "-b was triggered, Parameter: $OPTARG" >&2 
	echo $OPTARG1
	echo $OPTARG2
	echo $OPTARG
#      $Routine_Home/BoD.sh 
      ;;
    d)
      echo "-d was triggered, Parameter: $OPTARG" >&2
#      $Routine_Home/Dev.sh 
      ;;
    e)
      echo "-e was triggered, Parameter: $OPTARG" >&2
#      $Routine_Home/EoD.sh 
      ;;
    y)
      echo "-y was triggered, Parameter: $OPTARG" >&2
#      $Routine_Home/YN.sh 
      ;;
    h)
      echo "-h arg1 is for Help $OPTARG" >&2
      echo " -b arg1 is for BoD"
      echo " -d arg1 is for Deviations"
      echo " -e arg1 is for EoD"
      echo " -y arg1 is for Yes/No"
      echo " ./Options.sh -b s -d s -e s -y s "
      ;;
    \?)
      echo "-h arg1 is for Help $OPTARG" >&2
      echo " -b arg1 is for BoD"
      echo " -d arg1 is for Deviations"
      echo " -e arg1 is for EoD"
      echo " -y arg1 is for Yes/No"
      echo " ./Options.sh -b s -d s -e s -y s "
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "-h arg1 is for Help $OPTARG" >&2
      echo " -b arg1 is for BoD"
      echo " -d arg1 is for Deviations"
      echo " -e arg1 is for EoD"
      echo " -y arg1 is for Yes/No"
      echo " ./Options.sh -b s -d s -e s -y s "
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
#===

#for file in *.yn
#do
# do something on $file 
#clear 
#echo "                                          Editing file $file" 
#echo "=================File : $file =========" 
#sleep 2 
#echo $WK_DATE_TIME >> $file 
#vi +$$ "$file" 
#done
#clear # clears screen 
#echo Routine home is $Routine_Home 
# Ran on 17_20200421-21_56
