#!/bin/bash

#assign a variable name with a value tea and print out the value of name and the number of characters it contains
name=tea
echo "value of name " tea
echo "$name contain ${#name} chars"

#print out the decimal representation of binary 7 (111)
echo $((2#111))

#To print out commands on same line use ;
echo "first line";echo "second line"

#to use Let , and " to show something - only the last operation is executed
let "y=((x-20,10/2))"
echo "value of y: $y"; echo "value of x: " $x

#use , to convert the first char of a value to lowercase
var=DSLConneCtioN
echo ${var,}

#use,, to convert all chars in a value to lowercase
var=DSLConneCtioN
echo ${var,,}

#use escape sequence to output "
echo "\"Linux is awesome\""
ls --help | grep "\-U"
