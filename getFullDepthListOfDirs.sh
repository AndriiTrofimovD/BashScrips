#!/bin/bash
#Andrii Trofimov 29.08.2021

#Returns a list of directories and subdirectories starting from the current directory unless starting directory
#is provided as the first argument. Hidden files are excluded.

if [ $# -gt 1 ]
then
	echo "USAGE: no arguments -> displays list of directories and subdirectories starting from the current directory;"
	echo "       one argument -> displays list of directories and subdirectories starting from the provided directory;"
	echo "       more than one argument? Don't make me cry..."
	exit
fi
if [ $# -eq 0 ]
then
	find . -name '[^\.]' 
else
	find $1
fi

