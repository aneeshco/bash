#!/bin/bash

####################################################################################################
##########This file contains uses of various special characters in bash script    ##################
####################################################################################################

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

#use ` to get the output of an operation, say an echo command, to a variable
let val=500/2
val2=`echo $val`
echo "value of val2 is $val2"

# : to mean do nothing
var=20
if [ $var -lt 15 ]
then
	:
else
	echo $var
fi

#  : can also be used to empty a file
touch wood.txt
echo "something here " > wood.txt
cat wood.txt

# To empty the file use :
: > wood.txt
cat wood.txt

#  ! is also a special character to use != for NOT EQUAL TO
# * is used as a wild character as well as a multiplication operator and exponentiation operator

# ? and : in combination as a conditional operator
var1=10
echo $((var2=var1<20?1:0))

#   () for scope and for array
var=5;
  (
    var=10;
    echo "var inside paranthesis $var";
  )
echo "var outside paranthesis $var"

Colors=(red,white,brown,purple)
echo $Colors

# using \$ and {}   --> to print the below as 'test1' 'test2' 'test3'
echo \'{test1,test2,test3}\'

# To concatenate multiple files into a single file - Below will create file3.txt with contents of file1.txt and file2.txt
cat {file1.txt,file2.txt} > file3.txt

#{} as a loop
echo {0..9}
