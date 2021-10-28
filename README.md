# Lab3

#### 3.1
The csv file used is movies.csv, a list from MovieLens that contains the movie name, release date, and genres. 

The shell script, named movieCount.sh, is where most of the analysis takes place. The script mainly utilizes awk to filter through the data to determine the yearly count of movies as well as the yearly count of movies per genre. The result is labeled movieDistribution.

Because movieCount.sh was written for the analysis beforehand, callScript.awk simply calls the shell script to run. 

To run, download the repository, change directory in your terminal to 3.1 and simply enter: make.
