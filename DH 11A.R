# Set 11 - Pie Chart

# Create Category Data
category <- c("Electronics", "Clothing", "Appliances")

# Create Sales Data
sales <- c(50000, 35000, 40000)

# Display Data
print(category)
print(sales)

# Draw Pie Chart
pie(
  sales,
  labels = category,
  col = c("skyblue", "lightgreen", "orange"),
  main = "Sales Distribution by Category"
)
