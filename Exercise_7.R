#1 load a given specified file into data frame to be manipulated by R
load <- read.csv(filename, header = TRUE)

# obtain user input for number of lines captured
linesinput <- readline(prompt = "Enter number of lines to be captured here: ")
linesinput <- as.integer(linesinput)

# extract the specified number of lines
extractlines <- load[1:linesinput,]
extractlines

#2 load data from file
iris <- read.table(file='iris.csv', header = TRUE, sep = ",", stringsAsFactors = FALSE)

# print the last 2 rows in the last 2 columns to the R terminal
iris[149:150,4:5]

# get the number of observations for each species included in the data set

# get observations for setosa
nrow(iris[iris$Species=="setosa",])

# get observations for virginica
nrow(iris[iris$Species=="virginica",])

# get observations for versicolor
nrow(iris[iris$Species=="versicolor",])

# get rows with Sepal.Width > 3.5
iris[iris[,2]>3.5,]

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosafile <- iris[iris$Species=="setosa",]
write.table(setosafile, "setosa.csv", sep = ",", row.names = FALSE, col.names = FALSE)

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginicaData <- iris[iris$Species=="virginica",]

mean(virginicaData$Petal.Length)
min(virginicaData$Petal.Length)
max(virginicaData$Petal.Length)

