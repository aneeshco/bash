#!/bin/bash

# various way to assign a value to a variable, sleep is used to pause the command execution for 1 second
variable=foo
echo "The variable assigned is $variable"
echo -n "Please enter your first name and last name "
read firstname lastname
echo "your first name is $firstname and last name is $lastname"
set|grep "name="
sleep 1

# To read a file and output to screen 
while read message
do
    sleep 1
    echo $message
done < ./README.md

sleep 1

# command substitution - value of date command is stored in variable var 
# - done in two ways, both produce the same result
var1=`date`
var2=$(date)
echo "var1 is $var1 and var2 is  $var2"

