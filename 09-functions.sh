#!/bin/bash
USERID=$(id -u)
VALIDATE(){
    # $1 will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo "$2 ...FAILURE"
        exit 1
    else 
        echo "$2 ...SUCCESS"
    fi
}
if [ $USERID -ne 0 ]
then
    echo "Error: Please run the script with root access"
    exit 1
else 
    echo "you are root user"
fi

# it is our responsibility to ensure that installation is success or not

yum install mysql -y

VALIDATE $? "Installation MySQL"

yum install postfix -y

VALIDATE $? "Installation postfix"

