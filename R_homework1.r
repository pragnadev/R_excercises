# # Exercise 1 – Getting Started with R
# 
# The aim of this exercise is to become familiar with the R environment, 
# create and manipulate objects, and use basic R operators and functions.
# 
# 1. Working directory
#   
# Check your current working directory.
# Create a new folder on your computer called `R_exercises`.
# Set `R_exercises` as your working directory.
# Check again the current working directory to verify that it has been correctly changed.
setwd("path/to/homework")
getwd()
# 2. Getting help in R
# Open the general R help page.
# Use the R help system to find information about the function `sqrt()`.
# Find out what the function `sqrt()` does.
help()
help(sqrt)
sqrt(25)
# 3. Packages
#   
# Check which R packages are currently installed on your computer.
# Install the package `ggplot2`.
# Load the `ggplot2` package into your current R session.
installed.packages()
install.packages("ggplot2")

# 4. Creating objects
#   
# Create an object called `x` and assign the value 10 to it.
# Create an object called `y` and assign the value 4 to it.
# Create a third object called `z` containing the sum of `x` and `y`.
# Display the value of `z`.
# Check the type of `x`.
x <- 10 
y <- 4
z <- x+y
z
typeof(x)


# 5. Arithmetic operations
#   
#   Using the objects `x` and `y` created above, calculate:
#   
# their sum;
# their difference;
# their product;
# the result of `x` divided by `y`;
# `x` raised to the power of `y`;
# the remainder of the division of `x` by `y`.
# 
# Store each result in a different R object with a meaningful name.
x <- 10
y <- 4
sum <- x+y
difference <- x-y
product <- x*y
power <- x^y
remaider <- x%%y
# 6. Changing and removing objects
#   
# Change the value of `x` from 10 to 15.
# Compute `x + y` again and check how the result changes.
# Remove the object `z` from the R environment.
# Use an R command to check which objects are currently available in your environment.
x <-15
x+y
rm(z)
ls()
# 7. Relational operators
#   
#   Using the current values of `x` and `y`, write R commands to check whether:
#   
#  `x` is greater than `y`;
#  `x` is smaller than `y`;
#  `x` is equal to 15;
#  `y` is different from 4;
#  `x` and `y` are equal.
# 
# Look at the output of each command. What type of value does R return?
x > y
x < y
x == 15
y!= 4
x == y
#   8. Logical operators
#   
#   Write R expressions to check whether:
#   
#  `x` is greater than 10 and `y` is smaller than 5;
#  `x` is greater than 20 and `y` is smaller than 5;
#  `x` is greater than 20 or `y` is smaller than 5.
# 
# Before running each command, try to predict whether R will return `TRUE` or `FALSE`.
x > 10 & y < 5
x > 20 & y < 5
x > 20 | y < 5
# 9. Mathematical functions
#   
#   Create an object called `a` equal to 5. Then:
#   
#   calculate the natural logarithm of `a`;
#   calculate the sine of `a`;
#   calculate the cosine of `a`;
#   calculate the square root of `a`.
# 
# Store each result in a separate object.
a <- 5
log_a <- log(a)
sin_a <- sin(a)
cos_a <- cos(a)
sqrt_a <- sqrt(a)
log_a
sin_a
cos_a
sqrt_a
# 10. Combining operations
#   
#   Using `a = 5`, create an object called `result` containing
# 
#  {sin(a)+cos(a)}/{log(a)}
#   
#   Display the result.
result <- (sin(a)+cos(a)) / log(a)
result
# 11. Character objects
#   
#   Create an object called `course` containing the text `"R coding"`.
#   Display the object.
#   Check its type using the appropriate R function.
course <- "R coding"
course
typeof(course)
# 12. Final challenge
#   
#   Create two numerical objects called `weight` and `height`, containing your choice of values.
# 
# Then, without creating additional numerical objects, write R commands to:
#   
#   calculate `weight / height^2`;
#   check whether the resulting value is greater than 25;
#   calculate the natural logarithm of the result.
weight <- 60
height <- 1.65
weight / height^2
weight/height^2 >25
log(weight/height^2)
