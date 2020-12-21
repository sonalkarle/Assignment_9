#!/bin/bash -x
#Adding part time Employee wage
#Take constant for code
isparttime=1;
isfulltime=2;
empRatePerHr=20;

#Generating input using random command
	randomCheck=$((RANDOM%3))
#Using if condition to generate salary for parttime and fulltime employee

if [[ $isfulltime -eq $randomCheck ]]
then
	empHrs=8
elif [[ $isparttime -eq $randomCheck ]]
then
	empHrs=4
else
	empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))


