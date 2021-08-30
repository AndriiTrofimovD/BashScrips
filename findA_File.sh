#!/usr/bin/bash

#Andrii Trofimov 30.08.2021

#Finds and prints location (if exists) of a file with its name provided as the first argument
#Starts searching from the current directory unless otherwise is specified, in which case the
#first argument is starting dicrectory and the second is a name of a file to search.
if [ $# -eq 2 ]
then
	find $1 -type f -name $2
elif [ $# -eq 1 ]
then 
	find -type f -name $1
else
	echo "USAGE: The optional first argument is the starting point of file search"
	echo "       if starting point is not provided, a search begins from the current directory"
	echo "       in that case provide only name of the file to search. No other options are possible"
fi
