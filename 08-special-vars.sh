#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "To know which user is running script: $USER"
echo "Hostname: $HOSTNAME"
echo "process ID of current shell script: $$"
echo "process ID of last background command: $!"