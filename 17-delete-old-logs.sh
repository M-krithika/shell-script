#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[33m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)


echo "files to delete $FILES"

while IFS= read -r line
do 
    echo "deleting file: $lineE"
    rm -rf $line
done <<< $FILES