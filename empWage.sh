#!/bin/bash -x
#Solving add parttime and daily wage salary using cases
#Take constant for code
isparttime=1
isfulltime=2
empRatePerHr=20
salary=0
#Generating input using random Command 
	empCheck=$((RANDOM%3))
#Using case statement for selection according input
case $empCheck in
	$isfulltime)
			empHrs=8
			;;
	$isparttime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
esac

salary =$(($empHrs*$empRatePerHr))
