#!/bin/bash -x
#Store the daily wage along with the total wage
#Take constant for code
isfulltime=1
isparttime=2
salary=0
empRatePerHr=20
MaxWorkingDays=20
MaxworkingHrs=60
TotalworkingDays=1
TotalworkingHrs=0
#Applyingcondition to check max working hrs with total working hrs and days

while [[ $TotalworkingHrs -lt $MaxWorkingHrs && $TotalworkingDays -lt $MaxWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
#Apply case statment for checking differnt condition
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

TotalSalary=$(($TotalworkingHrs*$empRatePerHrs ))

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

while [[ $TotalworkingHrs -lt $MaxWorkingHrs && $TotalworkingDays -lt $MaxWorkingDays ]]
do
        TotalworkingDays=$((TotalworkingDays+1))
        empCheck=$((RANDOM%3))
        empHrs="$getWorkHrs $empCheck "
        TotalworkingHrs=$(( $TotalworkingHrs+$empHrs ))

done
TotalSalary=$(($TotalworkingHrs*$empRatePerHr ))


echo "Employee wage per month:" $TotalSalary
