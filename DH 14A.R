responses <- matrix(c(30,20,10,
                      25,15,20,
                      20,30,15),
                    nrow=3)

barplot(responses,
        beside=FALSE,
        col=c("red","green","blue"),
        main="Survey Results")