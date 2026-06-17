sales <- matrix(c(
  2000,2200,2400,
  1500,1800,1600,
  1200,1400,1100),
  nrow=3, byrow=TRUE)

barplot(sales,
        beside=TRUE,
        col=c("skyblue","orange","green"),
        legend=c("Product A",
                 "Product B",
                 "Product C"),
        main="Monthly Sales")