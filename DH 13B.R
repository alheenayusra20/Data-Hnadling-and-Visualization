city <- c("A","B","C")
population <- c(500000,700000,600000)
temperature <- c(75,68,80)
area <- c(30,45,25)

symbols(population,
        temperature,
        circles=area,
        inches=0.3,
        fg="blue",
        main="Bubble Chart")