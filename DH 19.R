# Dataset
app <- data.frame(
  Gender=c("Male","Female","Male","Female","Male","Female"),
  Screen_Time=c(4.5,6.0,3.2,7.1,2.8,5.4),
  App_Usage_Count=c(18,25,12,30,10,22),
  Data_Used=c(2.4,3.8,1.6,4.5,1.2,3.1),
  Satisfaction=c(3,5,3,5,2,4)
)

# 1. Histogram
hist(app$Screen_Time,
     col="skyblue",
     main="Screen Time Distribution",
     xlab="Screen Time")

# Density Plot
plot(density(app$Screen_Time),
     col="red",
     lwd=3,
     main="Density Plot of Screen Time")

# 2. Scatter Plot
plot(app$Data_Used,
     app$Screen_Time,
     pch=19,
     col="blue",
     main="Data Used vs Screen Time",
     xlab="Data Used (GB)",
     ylab="Screen Time (hrs)")

abline(lm(Screen_Time~Data_Used,data=app),
       col="red",
       lwd=2)

cor(app$Data_Used,
    app$Screen_Time)

# 3. Average Satisfaction by Gender
avg <- tapply(app$Satisfaction,
              app$Gender,
              mean)

bp <- barplot(avg,
              col=c("lightblue","pink"),
              main="Average Satisfaction by Gender")

text(bp,
     avg,
     labels=round(avg,2),
     pos=3)