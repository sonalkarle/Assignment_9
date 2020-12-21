#!/bin/bash -x
#calculate the dailywage of Employee
#Take one constant
	ispresent=1;
#Generate input by using random command 
	randomCheck=$((RANDOM%2))
#Use if condition to compare input with constant to calculate dailywage for present employee
	if [[ $ispresent -eq $randomCheck ]]
	then
		empRatePerHr=20
		empHrs=8
		salary=$(($empHrs*$empRatePerHr))
	else
		salary=0
	fi
	
