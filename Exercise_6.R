## Exercise 6

## Write R code that replicates the functionality of the head function 
## we used in Unix. Your code should define a variable with the file to 
## return lines from and a variable representing the number of lines to
## be returned from the top of the indicated file. The selected file 
## content should be printed to the terminal in R.

wages = read.csv("wages.csv", header = TRUE, sep = ",", quote = "") # Read in .csv file
file_name <- wages # Set variable for file you want to read
lines <- 5 # Set variable for the number of lines you want printed from the top
head(file_name, n = lines) # Print out the first n lines
file_name[1:lines,] # Another way to print out the first n lines

## Load the data contained in the provided 'iris.csv' file and write R
## code to do the following things:

iris = read.csv("iris.csv", header = TRUE, sep = ",", quote = "")
 
# Print the last 2 rows in the last 2 columns to the R terminal

iris[(nrow(iris)-1):nrow(iris), (ncol(iris)-1):ncol(iris)]

# Get the number of observations for each species included in the data set

paste("Setosa:", nrow(iris[grep("setosa",iris$X.Species.),])) # number of setosa obs.
paste("Versicolor:", nrow(iris[grep("versicolor",iris$X.Species.),])) # number of versicolor obs.
paste("Virginica:", nrow(iris[grep("virginica",iris$X.Species.),])) # number of viriginica obs. 

# Get rows with Sepal.Width > 3.5

iris[which(iris$X.Sepal.Width. >= 3.5, arr.ind = TRUE),]

# Write the data for the species 'setosa' to a comma-delimited file named
# 'setosa.csv'

setosa <- iris[grep("setosa",iris$X.Species.),1:5]
write.table(setosa, file='setosa.csv', sep = ",", quote=FALSE)

# Calculate the mean, minimum, and maximum of Petal.Length for observations
# from 'virginia'

Petal_Length <- iris[grep("virginica",iris$X.Species.),3]
mean(Petal_Length) # Mean value
min(Petal_Length) # Minimum value
max(Petal_Length) # Maximum value
