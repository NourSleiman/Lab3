# Lab3

#### 3.1
The csv file used is movies.csv, a list from MovieLens that contains the movie name, release date, and genres. 

The shell script, named movieCount.sh, is where most of the analysis takes place. The script mainly utilizes awk to filter through the data to determine the yearly count of movies as well as the yearly count of movies per genre. The result is labeled movieDistribution.

The results have the year, how many movies were released that year, and a list of every genre and how many movies of each genre were released that year.

Because movieCount.sh was written for the analysis beforehand, callScript.awk simply calls the shell script to run. 

To run, download the repository, change directory in your terminal to 3.1 and simply enter: make.

#### 3.2
The HTML file calls a javascript file whenever the "submit" button is pressed.

Whatever text is in the text box is then counted, exclusing whitepace and including punctuation/symbols. 

The word length is then printed below the text box. 

##### Examples 
![sample1](https://user-images.githubusercontent.com/32310672/139942213-17032106-b2e8-4493-a1e5-f3878ec8dec0.png)



![sample2](https://user-images.githubusercontent.com/32310672/139942238-dd61dd33-2f06-4e7c-a363-c6dd544cf86d.png)
