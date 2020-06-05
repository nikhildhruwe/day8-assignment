#!/bin/bash -x
 declare -A birthday
count=0
people=50
while (($count<50))
do
	month=$((RANDOM%12 + 1))
	person[count++]=${month}-1992
done
count=0
while (( ${person[count]} ))
do
	month=`echo ${person[count]} | awk -F "-" '{print $1}'`

	case $month in
					1) ((jan++))
						birthday[jan]=$jan;;
					2) ((feb++))
						birthday[feb]=$feb;;
					3) ((march++))
						birthday[march]=$march;;
					4) ((april++))
						birthday[april]=$april;;
					5) ((may++))
						birthday[may]=$may;;
					6) ((june++))
						birthday[june]=$june;;
					7) ((july++))
						birthday[july]=$july;;
					8) ((aug++))
						birthday[aug]=$aug;;
					9) ((sept++))
						birthday[sept]=$sept;;
				  10) ((oct++))
						birthday[oct]=$oct;;
				  11) ((nov++))
						birthday[nov]=$nov;;
				  12) ((dec++))
						birthday[dec]=$dec;;
	esac
	((count++))
done
echo " Number of bithrdays of people in each month of year 1992"
for key in ${!birthday[@]}
do
	echo $key : ${birthday[$key]}
done
