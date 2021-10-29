#! /usr/bin/bash

INPUT=./movies.csv 
declare -a genres=("Action" "Adventure" "Animation" 
"Children" "Comedy" "Crime" "Documentary" "Drama" "Fantasy" "Film-Noir"
"Horror" "IMAX" "Musical" "Mystery" "Romance" "Sci-Fi" 
"Thriller" "War" "Western")

for i in {1915..2018}
do
	# For each year, the line found is written to totalMovies.txt to get the total count of movies for that year
	# The Year and the count is appended to movieDistribution.txt
	grep "($i)" $INPUT > ./totalMovies.txt
	totalCount=`awk 'END { print NR }' ./totalMovies.txt`
	echo "$i - Total Movies: $totalCount" >> ./movieDistribution.txt

	# For each year, each genre is searched for and written to genreCount.txt to get the total count per genre
	# The genre and the count is appended to movieDistribution.txt
	for g in "${genres[@]}"
	do
		awk "/$g/ {print}" totalMovies.txt > ./genreCount.txt
		count=`awk 'END { print NR }' ./genreCount.txt`
		echo "$g : $count" >> ./movieDistribution.txt
	done
	# Line break to separate between the years
	echo "----------------" >> ./movieDistribution.txt
done
