#!/bin/bash -x
#Calculating the wage for month using case statment
#Take constant for code
isfulltime=1
isparttime=2
empRatePerHr=20
numberOfWorkingDays=20
#Create loop condition for working days
for (( day=1; day<=$numberOfWorkingDays; day++ ))
do
#Genrating input for different condition usign random command
	empCheck=$(( RANDOM%3 ))
#Usign case statment used different combination
case $empCheck in
	$isfulltime)
			emphr=8
			;;
	$parttime)
			emphr=4
			;;
		*)
			emphr=0
			;;
	esac
		salary=$(( $emphr * $empRatePerHr ))
		
done
echo $salary
