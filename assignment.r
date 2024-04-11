pima <- read.table(
    file = "pima-indians-diabetes.txt",
    header = TRUE,
    sep = ","
)


head(pima)


par(mfrow = c(2, 1))


hist(pima$Glucose[pima$Diabetes == "1"],
    main = "Plasma Glucose Concentration: Subjects with Diabetes",
    ylab = "Frequency",
    xlab = "",
    col = "red"
)

hist(pima$Glucose[pima$Diabetes == "0"],
    main = "Plasma Glucose Concentration: Subjects without Diabetes",
    ylab = "Frequency",
    xlab = "",
    col = "green"
)

par(mfrow = c(1, 1))


diabetes <- table(pima$Diabetes)


barplot(diabetes,
    col = "blue",
    main = "Pima Indians Diabetes Data",
    xlab = "Diabetes (0 - no diabetes, 1 - diabetes)",
    ylab = "Number"
)

summary(pima$Glucose[pima$Diabetes == "1"])

require(psych)

describe(pima$Glucose[pima$Diabetes == "1"])

detach(
    package:psych,
    unload = TRUE
)

rm(list = ls())