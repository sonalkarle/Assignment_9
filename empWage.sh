#!/bin/bash -x
#Refactor the code to write a function to get work hours
#Take constant for code
isfulltime=1
isparttime=2
Salary=0
empRatePerHr=20
MaxWorkingDay=20
MaxWorkingHr=60
TotalworkingDays=1
TotalworkingHrs=0
#Apply the function for employee working time

function getWorkHrs()
{
        case $1 in
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
        echo $empHrs
}
#Applying condition for checking max working days and max working hrs
while [[ $TotalworkingHrs -lt $MaxWorkingHr && $TotalworkingDays -lt $MaxWorkingDay ]]
do
       TotalworkingDay=$((TotalworkingDays+1))
        empCheck=$((RANDOM%3))
        empHrs="$getWorkHrs $empCheck "
        TotalworkingHrs=$(( $TotalworkingHrs+$empHrs ))

done
TotalSalary=$(($TotalworkingHrs*$empRatePerHr ))

echo "Employee wage per month:" $TotalSalary
