#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[33m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$G Source directory exists $N"
else
    echo "$R please make sure $SOURCE_DIRECTORY exists $N"
    exit 1

