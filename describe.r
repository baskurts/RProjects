# the describe function is in a contribute package 
# name psych 
# so psych must be instaled, loaded, and attached to 
# the current R Environment 

# get a list of all the installed packages on our laptops 
library()

# install the psych contributed package 
# must run RGui as adminstrator and then execute 
# install.packages("psych")

# load and attach the psych package to the current R 
# environment 
require(psych)

# get R help on describe function 
?describe

# describe may be used with quantative variales only 
# it gives more statistical information than the summary 
# function 
# give describe function 1 quantative variable 
describe(iris$Sepal.Length)

# give describe function iris data frame 
describe(iris)

# detach and unload psych package from current R environment 
detach(
    package:psych,
    unload = TRUE
)