# we will take a look at 5 data structures: 
# vector, matrix, array, data frame, list. 
# as we go from vecotr to matrix and so on, the 
# structures get more robust, but they also 
# get more complex.

# a vector is a 1 dimensional collection.
# the data values put into a vector must be of
# the same data type.
# a vecotr may consist of 1 element ir multiple
# elements 
# it's R's most bsic data structure 

# create a vector of numeric data values 
v1 <- c(1, 2, 3, 4, 5)
v1
# create a vector of character data values 
v2 <- c("a","b","c")
v2

# create a vecor of logical data values 
v3 <- c(T,F,F,T,T)
v3

# a matrix is a 2 dimensional collection. 
# it consits of rows and columns. 
# the data values must be of the same data type. 
# use the matrix function to create a matrix. 

# create a matrix of logical data values
m1 <- matrix(
    c(T, F, F, F, T, F), # specifies the data values
    nrow = 2 # specifies the number of rows
)
m1

# create a matrix of character data values 
m2 <- matrix(
    c("a", "b", "c", "d"),
    nrow = 2
)
m2

# this will generate an error because the number of 
# data values isn't a multpl of the number or rows.
m3 <- matrix(
    c("a", "b", "c"),
    nrow = 2
)
m3

# the array may have 3 or more dimensions. 
# the data values must be of the same data type. 
# use the array function to create arrays. 

# create an array of numeric data values (1 -24)
a1 <- array(
    c(1:24), # specifies the data values
    c(4, 3, 2) # specifies the dimensions - rows, columns, tables
)
a1

# a dataframe is a  dimensional colllection that can 
# have vecotrs of different data types, but the vectors
# must all be of the same length. 

# create 3 vectors all of the same length
vnumeric <- c(1, 2, 3)
vcharacter <- c("a", "b", "c")
vlogical <- c(T, F, T)

# create a data frame combining the vectors together 
# use the as.data.frame and cbind functions to create
# a data frame 
df <- as.data.frame(cbind(vnumeric,vcharacter,vlogical))
df

# the list is one of the most robust and flexible data
# structure in R because te data values in them may 
# be of any data type and the data strucutre in them
# may be of any length

# create 3 vectors of different data types and length 
o1 <- c(1, 2 ,3)
o2 <- c("a","b","c", "c", "d", "e")
o3 <- c(T, F, F, T)

# create a list using 3 vectors and list function
list1 <- list(o1, o2, o3)
list1

# create a list that includes a list 
list2 <- list(o1, o2, o3, list1)
list2

# clear variables in the global environment 
rm(list = ls())