#!/bin/bash -x
#check employee is present or not 
#Take one constant

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
