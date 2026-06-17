install.packages("farver")
install.packages("scales")
install.packages("ggplot2")
library(ggplot2)
library(corrplot)

# Dataset
vehicle <- data.frame(
  Vehicle_ID=c("V1","V2","V3","V4","V5"),
  Engine_Size=c(1.5,2.0,3.0,2.5,1.8),
  Horsepower=c(110,150,250,200,130),
  Fuel_Efficiency=c(18,15,12,14,17),
  Top_Speed=c(180,200,250,220,190),
  Safety_Rating=factor(c(4,5,5,4,3))
)

# 1. Violin Plot
ggplot(vehicle,
       aes(x=Safety_Rating,
           y=Fuel_Efficiency,
           fill=Safety_Rating))+
  geom_violin()+
  labs(title="Fuel Efficiency by Safety Rating")

# 2. Scatter Plot
ggplot(vehicle,
       aes(Horsepower,
           Top_Speed,
           color=Engine_Size))+
  geom_point(size=4)+
  labs(title="Horsepower vs Top Speed")

# 3. Correlation Heatmap
num_data <- data.frame(
  Engine_Size=vehicle$Engine_Size,
  Horsepower=vehicle$Horsepower,
  Fuel_Efficiency=vehicle$Fuel_Efficiency,
  Top_Speed=vehicle$Top_Speed,
  Safety_Rating=as.numeric(vehicle$Safety_Rating)
)

corrplot(cor(num_data),
         method="color",
         addCoef.col="black")
