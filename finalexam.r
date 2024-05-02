?CO2

head(CO2)

plot(CO2$Plant,
    CO2$uptake,
    col = "lightblue",
    main = "CO2 Uptake in Grass Plants",
    xlab = "Uptake",
    ylab = "Plant")

par(mfrow = c(1,2))

quebec_data <- subset(CO2, Type == "Quebec")
hist(quebec_data$uptake, main="CO2 Uptake for Quebec", xlab="Uptake", col="red", xlim=c(0, 50), breaks=10)
mississippi_data <- subset(CO2, Type == "Mississippi")
hist(mississippi_data$uptake, main="CO2 Uptake for Mississippi", xlab="Uptake", col="green", xlim=c(0, 40), breaks=10)

par(mfrow=c(1,1))

summary(subset(CO2, Type=="Mississippi")$uptake)

summary(subset(CO2, Type=="Quebec")$uptake)