#! /bin/bash

search_dir=/home/killian/.config/icons/bar/
random=0
i=0
file=""
nbFiles=$(ls $search_dir | wc -l)

random=$(($RANDOM % $nbFiles))
ls $search_dir | while read line
do
	if [ $i -eq $random ] 
	then
		file=$line
		echo "$search_dir$file"
	fi
	i=$((i+1))
done


