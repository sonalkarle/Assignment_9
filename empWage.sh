#!/bin/bash -x
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
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
>>>>>>> UC6_calculate_wages_for_totalworking_hours_formonth

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
=======
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
>>>>>>> UC4_Solving_using_switch_case
=======
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
>>>>>>> UC5_Calculating_Wages_month_using_Case_statment
