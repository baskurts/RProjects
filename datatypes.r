# there are 3 basic data types in R: numeric, character, logical 

# the numeric data type encompasses integers, doubles, and floats 
# double is the defualt data type 
# assign a vlaue of 15 to a variabel 
n1 <- 15
n1

# typeof will tell you the data type of the variable it's given 
typeof(n1)

# assign a value of 1.5 to a variable
n2 <- 1.5 
n2 
typeof(n2)

# assign a value of 15 as an integer to a variable
n3 <- as.integer(15)
n3
typeof(n3)

# the cahracter data tyoe encompasses single characterrs as well as 
# strings of characters 
# there is no strnig stype in R 
# assign the single character "c" to a variable 
c1 <- "c"
c1
typeof(c1)

# assign a string of chaacters to a vairable 
c2 <- "a string of characters"
c2
typeof(c2)

# the logical data type encompasses TRUE and FALSE
# assign TRUE to a variable 
l1 <- TRUE
l1
typeof(l1)

# there are abbreviations for each logical value 
# T is the abbreviation fro TRUE
# F is the abbreviation for FALSE 
# assign FALSE to a variable using its abbreviation 
l2 <- F 
l2 
typeof(l2)

# clear variables in the global environment 
rm(list = ls())