#!/usr/bin/env bash
# File: guessinggame.sh

function num_files {
	local num=0
	for i in $(ls)
	do
		if [[ -f $i ]]
		then
			let num=$num+1
		fi
	done
	echo $num
}

echo "-- GUESSING GAME --"
guessed=0
num=$(num_files)
while [[ guessed -eq 0 ]]
do
	echo "Guess the numer of files in this directory: "
	read guess
#	echo "You guessed $guess"
	if [[ $guess -gt $num ]]
	then
		echo "Your guess was too high. Try again!"
	elif [[ $guess -lt $num ]]
	then
		echo "Your guess was too low. Try again!"
	else
		echo "Congratulations! Your guess was right!"
		let guessed=1
	fi
done


