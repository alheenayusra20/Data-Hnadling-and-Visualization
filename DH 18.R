# Dataset
student <- data.frame(
  Student_ID=c("S1","S2","S3","S4","S5"),
  Age=c(19,21,20,22,23),
  Study_Hours=c(12,8,15,10,7),
  Attendance=c(90,70,95,85,60),
  Test_Score=c(85,70,92,80,65),
  Participation_Score=c(8,7,9,8,6)
)

# 1. Stacked Area Chart
matplot(1:5,
        cbind(student$Test_Score,
              student$Participation_Score),
        type="l",
        lwd=3,
        main="Student Scores",
        xlab="Students",
        ylab="Scores")

legend("topleft",
       legend=c("Test Score",
                "Participation Score"),
       col=1:2,
       lty=1)

# 2. Attendance Quartiles Boxplot
student$Quartile <- cut(
  student$Attendance,
  breaks=quantile(student$Attendance,
                  probs=seq(0,1,0.25)),
  include.lowest=TRUE
)

boxplot(Study_Hours~Quartile,
        data=student,
        col=c("red","blue","green","yellow"),
        main="Study Hours by Attendance Quartile",
        xlab="Attendance Quartile",
        ylab="Study Hours")

# 3. Density Plot
plot(density(student$Test_Score),
     main="Density Plot of Test Scores",
     col="blue",
     lwd=3)