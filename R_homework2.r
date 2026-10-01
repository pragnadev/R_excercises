# Exercise: working with iris

# Considering data(iris), use the commands and concepts introduced in Lectures 1 and 2 to answer the following questions.
# 1. Load the data set and inspect it.
#     Use head() to display the first rows.
#     Use str() to check the structure of the data frame.
#     Check the class() and typeof() of at least two variables.
# 2. Explore the variable Species.
#     Extract the variable Species from iris.
#     Check whether it is a factor.
#     Use table() to compute the frequency of each species.
# 3. Create separate data sets for each flower type:
#     iris_setosa;
#     iris_versicolor;
#     iris_virginica.
# 4. Compare the three species.
#     Compute the mean of Sepal.Length for each species.
#     Compute the variance of Sepal.Length for each species.
#     Repeat the same operations for Sepal.Width, Petal.Length, and Petal.Width.
# 5. Use conditional subsetting.
#     Extract all flowers with Sepal.Length > 5.
#     Extract all flowers with Sepal.Length <= 5.
#     For both subsets, compute the frequency table of Species.
# 6. Practice data-frame subsetting.
#     Extract the first row of iris.
#     Extract the first column as a vector.
#     Extract the first column as a one-column data frame.
#     Extract rows 1, 10, and 50, and columns Sepal.Length and Species.
# 7. Create a small derived object.
#     Create a vector called petal_ratio equal to Petal.Length / Petal.Width.
#     Check its length and type.
#     Add it to iris as a new column called Petal.Ratio.
#     Use head() to verify that the new column has been added.
# Some useful starting points
data(iris)
head(iris)
str(iris)
# Example of conditional subsetting
iris_setosa <- iris[iris$Species == "setosa", ]
# Example of extracting one variable
head(iris$Sepal.Length)
#1
data(iris)
head(iris)
str(iris)
class(iris$Sepal.Length)
typeof(iris$Sepal.Length)
class(iris$Species)
typeof(iris$Species)
#2
species <- iris$Species
is.factor(species)
table(species)
#3
iris_setosa <- iris[iris$Species == "setosa",]
iris_versicolor <- iris[iris$Species == "versicolor",]
iris_virginica <- iris[iris$Species == "virginica",]
#4
#setosa
mean(iris_setosa$Sepal.Length)
var(iris_setosa$Sepal.Length)
mean(iris_setosa$Sepal.Width)
var(iris_setosa$Sepal.Width)
mean(iris_setosa$Petal.Length)
var(iris_setosa$Petal.Length)
mean(iris_setosa$Petal.Width)
var(iris_setosa$Petal.Width)
#versicolor
mean(iris_versicolor$Sepal.Length)
var(iris_versicolor$Sepal.Length)
mean(iris_versicolor$Sepal.Width)
var(iris_versicolor$Sepal.Width)
mean(iris_versicolor$Petal.Length)
var(iris_versicolor$Petal.Length)
mean(iris_versicolor$Petal.Width)
var(iris_versicolor$Petal.Width)
#virginica
mean(iris_virginica$Sepal.Length)
var(iris_virginica$Sepal.Length)
mean(iris_virginica$Sepal.Width)
var(iris_virginica$Sepal.Width)
mean(iris_virginica$Petal.Length)
var(iris_virginica$Petal.Length)
mean(iris_virginica$Petal.Width)
var(iris_virginica$Petal.Width)
#5
iris_gt5 <- iris[iris$Sepal.Length >5 ,]
iris_le5 <- iris[iris$Sepal.Length <= 5 ,]
table(iris_gt5$Species)
table(iris_le5$Species)
#6
iris[1,] #row
iris[,1] #column
iris[ ,1,drop = FALSE]#dataframe
iris[c(1,10,50),c("Sepal.Length","Species")]
#7
petal_ratio <- iris$Petal.Length / iris$Petal.Width
length(petal_ratio)
typeof(petal_ratio)
iris$Petal.Ratio <- petal_ratio
head(iris)
