#!/bin/bash/

# master branch
echo "Welcome to Employee Wages Computation Program"

# UC-1 Check Employee Attendance
Attendance=$((1+RANDOM%2))

#UC-2 Calculate Daily Employee Wages
EMP_RATE_PER_HOUR=20
FULL_TIME=8
WORKING_HOUR=$FULL_TIME
DAILY_WAGE=$((EMP_RATE_PER_HOUR*WORKING_HOUR))
echo "Daily Wages : $DAILY_WAGE"
