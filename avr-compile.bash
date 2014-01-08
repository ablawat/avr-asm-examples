#!/bin/bash

if [ $# == 0 ]
then
	echo "avr-compile.bash [PLIK]"
	exit 0
fi

avra $1

if [ $? == 0 ]
then
	FILES=$(find asm/*.hex)
	
	echo
	
	for I in $FILES
	do
		mv $I hex
		echo "mv $I hex"
	done
	
	COFFile=$(find asm/*.cof)
	rm $COFFile
	echo "rm $COFFile"
	
	OBJFile=$(find asm/*.obj)
	rm $OBJFile
	echo "rm $OBJFile"
fi

exit 0
