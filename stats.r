# read.table will transform the data in the Lung 
# Capacity text file into a data frame 
# first arg. specifies the text file 
# second arg. specifies tha t the first row of the 
# text file contains the names of the variables 
# third arg. specifies how the data values are 
# seperated in the text file 
lungcap <- read.table(
    file = "LungCapData.txt",
    header = TRUE,
    sep = "\t"
)

# show first 6 row of the lung cap data frame 
head(lungcap)

# use table function to create a frequency table for 
# a categorical variable 
table(lungcap$Smoke)

# use the length function to find out how many data values 
# we have for a categorical varibale 
length(lungcap$Smoke)

# use the fable and length function to create a proportion 
# table for a categorical variable
table(lungcap$Smoke) / length(lungcap$Smoke)

# use the table function to create a contingency table 
# for 2 categrical variables 
table(lungcap$Smoke, lungcap$Gender)

# use the mean function to calculate the mean for a 
# quantative variable 
mean(lungcap$LungCap)

# use the mean function to calculate the trimmed mean for a 
# quantative variable, where the top and bottom 10% are trimmed
mean(
    lungcap$LungCap,
    trim = 0.10
)

# use the median function to calculate the median for a 
# quantative variable
median(lungcap$LungCap) 

# use the var function to calculate the variance for a 
# quantative variable 
var(lungcap$LungCap)

# use the ad function to calculate the standard for a 
# quantative variable 
sd(lungcap$LungCap)

# use the min function to calculate the minimum for a 
# quantative variable 
min(lungcap$LungCap)

# use the max function to calculate the maximum for a 
# quantative variable 
max(lungcap$LungCap)

# use the range function to calculate the range for a 
# quantative variable 
range(lungcap$LungCap)

# used quantile function to calculate specific quantiles
# for a quantative variables 
# may provide 1 specific quantil or multiple quantiles 
quantile(lungcap$LungCap,
    probs = c(0.25, 0.5, 0.75, 1.0)
)

# use cor function to calculate pearson's correalation 
cor(lungcap$LungCap, 
    lungcap$Age
)

cor(lungcap$LungCap, 
    lungcap$Age,
    method = "spearman"
)

# clear variable from global environment 
rm(list = ls())