#!/bin/bash

while true 
do 
	read -p "Enter a word (type 'stop' to exit): " word
	if [[ "$word" == "stop" ]]
	then
		break 
	fi 
done 
