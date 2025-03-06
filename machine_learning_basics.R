# Machine Learning Basics in R

# Load necessary library
library(caret)

# Load dataset
data(iris)

# Splitting dataset into training and testing sets
set.seed(123)
index <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Train a simple classification model
model <- train(Species ~ ., data = train_data, method = "rpart")
print(model)

# Make predictions
predictions <- predict(model, newdata = test_data)
conf_matrix <- confusionMatrix(predictions, test_data$Species)
print(conf_matrix)
