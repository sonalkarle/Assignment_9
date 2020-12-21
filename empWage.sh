#!/bin/bash -x
#Calculating wages till number of working days or total working hour per month is reached
#Take constant for code
isfulltime=1
isparttime=2
Salary=0
empRatePerHr=20
MaxWorkingday=20
MaxWorkingHr=60
TotalworkingDays=1;
TotalworkingHrs=0;

#Applying condition for different scenarios for finding max days and max hours
while [[ $TotalworkingHrs -lt $MaxWorkingHr && $TotalworkingDays -lt $MaxWorkingday ]]
do
        TotalworkingDays=$((TotalworkingDays+1))

        empCheck=$((RANDOM%3))
#Apply case statement for conditons
        case $empCheck in
                $isfulltime)
                echo "fullTime employee"
                empHrs=8
                ;;
                $isparttime)
                echo "partTime employee"
                empHrs=4
                ;;
                *)
                echo "employee is Absent"
                empHrs=0;;
	esac
TotalworkingHrs=$(($TotalworkingHrs+$empHrs))
done
#find out the total salary
TotalSalary=$(($TotalworkingHrs*$empRatePerHr ))
echo "Employee wage per month:" $TotalSalary

