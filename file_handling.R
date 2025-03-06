# File Handling in R
# Writing to a file
write.table(mtcars, file = "mtcars.txt", sep = "	", row.names = FALSE)

# Reading from a file
data <- read.table("mtcars.txt", sep = "	", header = TRUE)
print(head(data))
