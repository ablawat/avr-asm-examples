#!/bin/bash

if [ $# == 0 ]
then
	echo "avr-program.bash [PLIK] [KONTROLER]"
	exit 0
fi

avrdude -c usbasp -p $2 -U flash:w:$1

exit 0
