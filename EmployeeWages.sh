#!/bin/bash/

echo "Welcome to Employee Wages Computation Program"	# master branch
Attendance=$((1+RANDOM%2))	#UC-1 Attendance of employee

declare -A dailyWages		#UC-9 Store Day and Daily Wages

EMP_RATE_PER_HOUR=20		#UC-2 Calculate Daily Employee Wages
FULL_TIME=8
PART_TIME=4 	#UC-3 Add Part time Employee and Wage
MAX_HOURS_IN_MONTH=$((FULL_TIME*EMP_RATE_PER_HOUR))
WORKING_DAY_IN_A_MONTH=20
NUMBER_OF_HOURS_WORKED=0
NUMBER_OF_DAYS_WORKED=0
function getWorkingHours(){		#UC-7 Function to get work hours
        case $1 in
                        1)
                                WORKING_HOURS=8;
                                ;;
                        2)
                                WORKING_HOURS=4
                                ;;
                esac
                echo $WORKING_HOURS
}

function getEmpWages()		#UC-8 To store Daily Wages
{
        WORKING_HOURS=$1
        echo $(($WORKING_HOURS*$EMP_RATE_PER_HOUR))

}

while [[ $NUMBER_OF_HOURS_WORKED -le $MAX_HOURS_IN_MONTH && $NUMBER_OF_DAYS_WORKED -le $WORKING_DAY_IN_A_MONTH ]]   #UC-6 Updated wages based on hours and days
do
	RANDOM_CHECK=$((1+RANDOM%2))
	(( NUMBER_OF_DAYS_WORKED++ ))
	WORKING_HOURS=$( getWorkingHours $RANDOM_CHECK )
	NUMBER_OF_HOURS_WORKED=$(($NUMBER_OF_HOURS_WORKED+$WORKING_HOURS))
	dailyWages["Day"$NUMBER_OF_DAYS_WORKED]=$(getEmpWages $WORKING_HOURS)
done
MONTHLY_WAGE=$((NUMBER_OF_HOURS_WORKED*EMP_RATE_PER_HOUR)) #UC-5 Added Monthly wage logic
echo "Monthly Wages : $MONTHLY_WAGE"
echo "Daily Wages: ${dailyWages[@]}"
echo "Days : ${!dailyWages[@]}"
