#!/bin/bash


DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
  
VALIDATE(){
    # $1 will receive the argument1 from command = (VALIDATE $? "Installation MySQL")
    if [ $1 -ne 0 ]
    then
       # $2 will receive the argument1
        echo "$2 ...FAILURE"
        exit 1
    else 
        echo "$2 ...SUCCESS"
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

