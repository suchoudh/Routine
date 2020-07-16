
ls *.yn|sort 
read -p " Enter the values in YN.ans"

while read -r first second all; do
  [[ $line = \#* ]] && continue
  printf '%s\n' "$WK_DATE_TIME $first" >> 1MadeBedin10.yn 
  printf '%s\n' "$WK_DATE_TIME $second" >> 1WashFaceArtiDi.yn 
  printf '%s\n' "$WK_DATE_TIME $all" >> 2ThyroxingTaken.yn 
done < YN.ans


clear 


ls *.dev|sort 
read -p " Enter the Deviation of Values in dev.ans"

while read -r first second all; do
  [[ $line = \#* ]] && continue
  printf '%s\n' "$WK_DATE_TIME $first" >> 1MadeBedin10.yn 
#  printf '%s\n' "$WK_DATE_TIME $second" >> 1WashFaceArtiDi.yn 
#  printf '%s\n' "$WK_DATE_TIME $all" >> 2ThyroxingTaken.yn 
done < dev.ans



ls *.BoD|sort 
read -p " Answer Questions at Begining of Day in BoD.ans"

while read -r first second all; do
  [[ $line = \#* ]] && continue
  printf '%s\n' "$WK_DATE_TIME $first" >> 1MadeBedin10.yn 
#  printf '%s\n' "$WK_DATE_TIME $second" >> 1WashFaceArtiDi.yn 
#  printf '%s\n' "$WK_DATE_TIME $all" >> 2ThyroxingTaken.yn 
done < BoD.ans



ls *.EoD|sort 
read -p " Answer Values in EoD.ans"

while read -r first second all; do
  [[ $line = \#* ]] && continue
  printf '%s\n' "$WK_DATE_TIME $first" >> 1MadeBedin10.yn 
#  printf '%s\n' "$WK_DATE_TIME $second" >> 1WashFaceArtiDi.yn 
#  printf '%s\n' "$WK_DATE_TIME $all" >> 2ThyroxingTaken.yn 
done < EoD.ans
