#!/usr/bin/env bash
# File guessinggame.sh

function guessinggame {
	echo "How many files are in the current directory?"
	read guess
	local number_files=$(ls -l | wc -l)
	local flag=0
	while [[ $flag = 0 ]]
	do
		echo $guess
		if [[ $number_files = $guess ]]
		then
			echo "Congratulation!!! You guessed $guess"
			flag=1
		else
			if [[ $number_files -gt $guess ]]
			then
				echo "The answer was too low"
			else
				echo "The answer was too high"
			fi
			echo "Try again:"
			read guess
		fi
	done

}
