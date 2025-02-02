#!/bin/bash


#Check if a file exists or not 

$(touch file1.txt)

FILE="file1.txt"

if [ -f "$FILE" ];
then
	echo "$FILE exists."
else
	echo "$FILE does not exists."
fi 



