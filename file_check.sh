#!/bin/bash


echo "Enter file name : "
read filename 

if [ -e "$filename" ]; then 
	echo "file exits"
else
	echo "file does not exist"
fi



