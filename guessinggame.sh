#!/usr/bin/env bash
filenum=$(ls | wc -l)
function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "You have guessed correct number!"
		echo "Total number of file is "
		for f in $(ls)
		do
			echo "  - $f and "
		done
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "Try again and press Enter :"
			guess_filenum
		else
			echo "Try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory :"
guess_filenum