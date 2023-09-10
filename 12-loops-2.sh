#!/bin/bash

USERID=$(id -u)
R="\e[31m"
N="\e[0m"
if [ $USERID -ne 0 ]; 
then
    echo "ERROR:: Please run this script with root access"
    exit 1   # exit with other than zero exit code
fi



for i in $@
do
    yum install $i -y
done