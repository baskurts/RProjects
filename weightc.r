library(help = "datasets")


?ChickWeight


head(ChickWeight)


plot(ChickWeight)

plot(ChickWeight$Diet, 
    col = "green",
    main = "ChickWeight:Diets", 
    xlab = "Diet Chicks Recieved", 
    ylab = "Number Chicks", 
)


plot(ChickWeight$Diet, 
    ChickWeight$weight,
    col = "blue",
    main = "ChickWeight:Diet vs Chick Body Weight", 
    xlab = "Diet Chicks Recieved", 
    ylab = "Chick Body Weight (cm)", 
    )



par(mfrow = c(3, 1))


plot(ChickWeight$weight[ChickWeight$Chick == "1"],
    col = "red",
    pch = 19,
    main = "ChickWeight:Chick 1", 
    xlab = "Number Days", 
    ylab = "Chick Body Weight (cm)", 
)

plot(ChickWeight$weight[ChickWeight$Chick == "2"],
    col = "blue",
    pch = 19,
    main = "ChickWeight:Chick 2", 
    xlab = "Number Days", 
    ylab = "Chick Body Weight (cm)", 
)

plot(ChickWeight$weight[ChickWeight$Chick == "3"],
    col = "green",
    pch = 19,
    main = "ChickWeight:Chick 3", 
    xlab = "Number Days", 
    ylab = "Chick Body Weight (cm)", 
)


par(mfrow = c(1, 1))


diets <- table(ChickWeight$Diet)


barplot(diets,
    col = "green",
    main = "ChickWeight:Diets",
    xlab = "Diet Chick Recieved",
    ylab = "Number Chicks"
)


rm(list = ls())


summary(ChickWeight$weight[ChickWeight$Diet == "1"])


require(psych)


describe(ChickWeight$weight[ChickWeight$Diet == "1"])


detach(
    package:psych,
    unload = TRUE
)