# Dataset
hospital <- data.frame(
  Patient_ID=c(1,2,3,4,5),
  Age=c(25,40,35,50,29),
  Waiting_Time=c(2,5,1,7,3),
  Status=c("Attended",
           "Missed",
           "Attended",
           "Missed",
           "Attended")
)

# 1. Histogram
hist(hospital$Age,
     col="lightblue",
     main="Patient Age Distribution",
     xlab="Age")

# 2. Pie Chart
status_count <- table(hospital$Status)

pie(status_count,
    col=c("green","red"),
    main="Appointment Status Distribution")

# 3. Bar Chart
barplot(hospital$Waiting_Time,
        names.arg=hospital$Patient_ID,
        col="orange",
        main="Waiting Time by Patient",
        xlab="Patient ID",
        ylab="Waiting Time (Days)")

D