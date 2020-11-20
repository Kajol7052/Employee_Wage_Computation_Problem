#!/bin/bash/

# master branch
echo "Welcome to Employee Wages Computation Program"

# UC-1 Check Employee Attendance
Attendance=$((1+RANDOM%2))

#UC-2 Calculate Daily Employee Wages
EMP_RATE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4 	#UC-3 Add Part time Employee and Wage
MAX_HOURS_IN_MONTH=$((FULL_TIME*EMP_RATE_PER_HOUR))
WORKING_DAY_IN_A_MONTH=20
NUMBER_OF_HOURS_WORKED=0
NUMBER_OF_DAYS_WORKED=0
while [[ $NUMBER_OF_HOURS_WORKED -le $MAX_HOURS_IN_MONTH && $NUMBERS_OF_DAYS_WORKED -le $WORKING_DAY_IN_A_MONTH ]]   #UC-6 Updated wages based on hours and days
do
	RANDOM_CHECK=$((1+RANDOM%2))
	case "$RANDOM_CHECK" in  #UC-4 Add Switch case statment for daily wages
	1) WORKING_HOUR=$FULL_TIME
	;;
	2) WORKING_HOUR=$PART_TIME
	;;
	esac
	((NUMBER_OF_DAYS_WORKED++))
	NUMBER_OF_HOURS_WORKED=$(($NUMBER_OF_HOURS_WORKED+$WORKING_HOUR))
done
MONTHLY_WAGE=$((NUMBER_OF_HOURS_WORKED*EMP_RATE_PER_HOUR)) #UC-5 Added Monthly wage logic
echo "Monthly Wages : $MONTHLY_WAGE"
