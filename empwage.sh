#!/bin/bash -x
empRatePerHour=20
isFullTime=2
isPartTime=1
randomCheck=$(( RANDOM%3 ))

case $randomCheck in
					$isFullTime)
									empHrs=8 ;;
					$isPartTime)
									empHrs=4 ;;
					*)
									empHrs=0 ;;
esac

salaray=$(( $empRatePerHour*$empHrs ))
echo $salary
