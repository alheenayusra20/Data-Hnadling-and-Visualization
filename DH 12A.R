date <- as.Date(c("2023-01-01",
                  "2023-01-02",
                  "2023-01-03"))

views <- c(1500,1600,1400)

plot(date, views,
     type="o",
     col="blue",
     main="Website Traffic",
     xlab="Date",
     ylab="Page Views")