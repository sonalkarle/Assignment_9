#!/bin/bash -x
<<<<<<< HEAD
<<<<<<< HEAD
#check employee is present or not 
#Take one constant
=======
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

>>>>>>> UC3_Add_parttime_Employee

	ispresent=1;

#Generating input with random command
 
	randomCheck=$(( RANDOM%2 ));

#Comparing input with constant using if condition

	if [[ $ispresent -eq  $randomCheck ]]

	then

	echo "Employee is Present"

	else

	echo "Employee is Absent"
	fi
=======
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
	
>>>>>>> UC2_Calculate_employee_dailywage
