#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error: Please run the script with root access"
    exit 1
else 
    echo "you are root user"
fi

yum install mysql -y
# $1 is checking exit status

if [ $? -ne 0 ]
then
    echo "mysql installation error"
    exit 1
else
    echo "mysql installation success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then
    echo "postfix installation error"
    exit 1
else
    echo "postfix installation success"
fi