#!/bin/bash -x
dailyWagePerHrs=20
numofDays=20
isFullTime=2
isPartTime=1
randomCheck=$(( RANDOM%3 ))

maxHrsInMonth=100
totalWrkDays=0
totalEmpHrs=0

while [[ $totalWrkDays -lt $numofDays && $totalEmpHrs -lt $maxHrsInMonth ]]
do
	((totalWrkDays++))
	case $randomCheck in
			$isFullTime)
					empHrs=8 ;;
			$isPartTime)
					empHrs=4 ;;
			*)
					empHrs=0 ;;
	esac
   totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done
	totalsalary=$(( $totalEmpHrs+$dailyWagePerHrs ))
	echo $totalsalary
