#!/bin/bash

COURSE= "Devops for current script"
echo "Before calling other script, course= $COURSE"
echo "PID of current script: $$"

./15-other-script.sh

echo "after calling other script, course= $COURSE"
echo "PID of current script: $$"