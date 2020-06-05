#!/bin/bash -x

while (($count<50))
do
	month=$((RANDOM%12+1))
	year[month]=$count
done



