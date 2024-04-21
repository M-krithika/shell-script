#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[33m"
Y="\e[33m"
B="\e[34m"
P="\e[35m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N"
        exit 1

    else
        echo -e "$2...$G SUCCESS $N"

    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
    exit 1
else
    echo "you are super user"
fi

for i in $@
do
  echo "package to install: $i"
  dnf list installed $1&>>$LOGFILE
  if[ $? -ee 0 ]
  then
    echo -e "si already installed...$Y SKIPPING $N"
  else
    dnf install $i -y &>>%LOGFILE
  VALIDATE $? "Installation of $i"
fi
done

