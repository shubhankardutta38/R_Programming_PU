# Load necessary library
library(e1071)
# Load the Iris dataset
data(iris)
# Split the dataset into training and testing sets
set.seed(123) # Set seed for reproducibility
sample_indices <- sample(1:nrow(iris), 0.7 * nrow(iris)) # 70% for training
train_data <- iris[sample_indices, ]
test_data <- iris[-sample_indices, ]
# Fit a Naive Bayes classifier
naive_bayes_model <- naiveBayes(Species ~ ., data = train_data)
# Make predictions on the test set insta
predicted_classes <- predict(naive_bayes_model, newdata = test_data)
# Confusion matrix
conf_matrix <- table(predicted_classes, test_data$Species)
print("Confusion Matrix:")
print(conf_matrix)
# Calculate accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
38
print(paste("Accuracy:", round(accuracy, 2)))
# Calculate precision, recall, and F1 score
precision <- conf_matrix[2, 2] / sum(conf_matrix[, 2])
recall <- conf_matrix[2, 2] / sum(conf_matrix[2, ])
f1_score <- 2 * (precision * recall) / (precision + recall)
print(paste("Precision:", round(precision, 2)))
print(paste("Recall:", round(recall, 2)))
print(paste("F1 Score:", round(f1_score, 2)))

