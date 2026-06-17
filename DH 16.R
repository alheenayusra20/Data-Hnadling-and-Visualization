#Scatterplot Matrix
patient <- data.frame(
  Age=c(25,40,55,35,60),
  BMI=c(22,28,30,26,32),
  BP=c(120,135,145,130,150),
  Cholesterol=c(180,210,240,200,260)
)

pairs(patient,
      main="Scatterplot Matrix of Health Indicators",
      col="blue", pch=19)

#Q-Q Plot and ECDF
chol <- c(180,210,240,200,260)

qqnorm(chol, main="Q-Q Plot of Cholesterol")
qqline(chol, col="red")

plot(ecdf(chol),
     main="ECDF of Cholesterol Levels",
     xlab="Cholesterol",
     ylab="Cumulative Probability")

#Average Health Indicators Bar Chart
avg_values <- c(
  mean(patient$Age),
  mean(patient$BMI),
  mean(patient$BP),
  mean(patient$Cholesterol)
)

barplot(avg_values,
        names.arg=c("Age","BMI","BP","Cholesterol"),
        col=c("skyblue","orange","green","pink"),
        main="Average Health Indicators",
        ylab="Average Value")