#!/bin/bash -x
#Store the day and the daily wage along with total wage
#Take constamt for code
isfulltime=1
isparttime=2
salary=0
empRatePerHr=20
MaxWorkingDays=20;
MaxWorkingHrs=100;
totalWorkingDays=1;
totalWorkingHrs=0;

function getWorkingHrs()
{
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
        echo $empHrs
}

while [[ $totalWorkingHrs -lt $MaxWorkingHrs && $totalWorkingDays -lt $MaxWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        empHrs="$(getWorkingHrs $empCheck)"
        dailyWage=$(($empHrs*$empRatePerHr))
        echo "Day"
        dailyWageArray[$totalWorkingDays]=$dailyWage
        totalWorkingHrs=$(( $totalWorkingHrs+$empHrs ))

done
totalSalary=$(($totalWorkingHrs*$empRatePerHr ))
echo "Array elements" ${dailyWageArray[@]}
echo "Index" ${!dailyWageArray[@]}

echo "Employee wage per month:" $totalSalary

