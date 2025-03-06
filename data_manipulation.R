
# Data Manipulation with dplyr

install.packages("dplyr")  # Install dplyr
library(dplyr)  # Load dplyr

# Create a sample data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 35, 40),
  Score = c(90, 80, 85, 95)
)

# Using dplyr functions
df_filtered <- df %>% filter(Age > 30)  # Filter rows
df_sorted <- df %>% arrange(Score)  # Sort data

print(df_filtered)
print(df_sorted)
