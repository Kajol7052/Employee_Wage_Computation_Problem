#!/bin/bash/

# master branch
echo "Welcome to Employee Wages Computation Program"

# UC-1 Check Employee Attendance
Attendance=$((1+RANDOM%2))

#UC-2 Calculate Daily Employee Wages
EMP_RATE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4
RANDOM_CHECK=$((1+RANDOM%2))
case "$RANDOM_CHECK" in
1) WORKING_HOUR=$FULL_TIME
;;
2) WORKING_HOUR=$PART_TIME
;;
esac
DAILY_WAGE=$((EMP_RATE_PER_HOUR*WORKING_HOUR))
echo "Daily Wages : $DAILY_WAGE"
WORKING_DAY_IN_A_MONTH=20
MONTHLY_WAGE=$((DAILY_WAGE*WORKING_DAY_IN_A_MONTH))
echo "Monthly Wages ; $MONTHLY_WAGE"
#UC-3 Add Part time Employee and Wage
#UC-4 Add Switch case statment for daily wage
