#!/bin/bash


DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    # $1 will receive the argument1 from command = (VALIDATE $? "Installation MySQL")
    if [ $1 -ne 0 ]
    then
       # $2 will receive the argument1
        echo -e "$2 ...$R FAILURE $N"
        exit 1
    else 
        echo -e "$2 ...$G SUCCESS $N"
    fi
}

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Error: Please run the script with root access"
    exit 1
#else 
#    echo "you are root user"
fi

# it is our responsibility to ensure that installation is success or not

yum install mysql -y &>>$LOGFILE 

VALIDATE $? "Installation MySQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installation postfix"

