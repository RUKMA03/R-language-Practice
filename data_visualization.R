
# Data Visualization with ggplot2

install.packages("ggplot2")
library(ggplot2)

# Sample data
data <- data.frame(
  category = c("A", "B", "C", "D"),
  value = c(10, 20, 30, 40)
)

# Create a bar plot
ggplot(data, aes(x = category, y = value, fill = category)) +
  geom_bar(stat = "identity") +
  theme_minimal()
