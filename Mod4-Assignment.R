


firstdata <- matrix(c("0.6", "103", "bad", "low", "low", "0.3", "87", "bad", "low",
                      "high", "0.4", "32", "bad", "high", "low", "0.4", "42", "bad",
                      "high", "high", "0.2","59","good","low","low", "0.6","109",
                      "good","low","high", "0.3","78","good","high","low", "0.4",
                      "205","good","high","high", "0.9","135", NA,"high","high",
                      "0.2","176","bad","high","high"), 10, byrow = TRUE)


hdata <- data.frame(firstdata)
colnames(hdata) <- c("Freq","bloodp","first", "second", "finaldecision")

hdata$Freq <- as.double(hdata$Freq)
hdata$bloodp <- as.numeric(hdata$bloodp)
hdata$first <- as.factor(hdata$first)
hdata$second <- as.factor(hdata$second)
hdata$finaldecision <- as.factor(hdata$finaldecision)


# Plots ----
b1 <- boxplot(bloodp ~  first, hdata, 
              main = "Assessment by General Doctor",
              col = (c("red", "green")),
              xlab = "First Assessment",
              ylab = "Blood Pressure")
b2 <- boxplot(bloodp ~  second, hdata,
              main = "Assessment by External Doctor",
              col = (c("red", "green")),
              xlab = "Second Assessment",
              ylab = "Blood Pressure")
bFinal <- boxplot(bloodp ~  finaldecision, hdata,
                  main = "Head of Emergency Unit's Decision 
                  for Immediate Patient Care",
                  col = (c("red", "green")),
                  xlab = "Final Decision",
                  ylab = "Blood Pressure")

h1 <- hist(hdata$bloodp,
           main = "Blood Pressure of Hospital Patients",
           xlab = "Blood Pressure",
           col = (c("green", "green", "red", "red", "red")))

h2 <- hist(hdata$Freq)
