#!/bin/bash

# to check if the number is greater than 10 or not

NUMBER=$1

if [ $NUMBER -gt 10 ]
then 
    echo "Number is greater than 10"
else
    echo "Number is not greater than 10"
fi