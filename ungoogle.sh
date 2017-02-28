#!/bin/bash

if [ $# -eq 0 ]
	then echo "No arguments supplied. Please provide a file name with a Google URL in it."
	exit
fi

if [ ! -e "$1" ]
	then echo "No file named $1 exists."
	exit
fi

encoded=$(cat $1|sed 's/url=/#/'|cut -d# -f2)
printf -v decoded '%b' "${encoded//%/\\x}"
echo "${decoded}"
