#!/bin/bash
USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Installation ...FAILURE"
        exit 1
    else 
        echo "Installation ...SUCCESS"
    fi
}
if [ $USERID -ne 0 ]
then
    echo "Error: Please run the script with root access"
    exit 1
else 
    echo "you are root user"
fi

yum install mysql -y

VALIDATE $?

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