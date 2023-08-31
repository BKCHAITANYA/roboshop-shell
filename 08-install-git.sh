#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error: Please run the script with root access"
    exit 1
else 
    echo "you are root user"
fi

yum install git -y