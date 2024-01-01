library(class)
data(iris)
set.seed(123)
sample_indices <- sample(1:nrow(iris), 0.7 *nrow(iris))
train_data <- iris[sample_indices, ]
test_data <- iris[-sample_indices, ]
k <- 3
predicted_classes <-knn(train = train_data[,1:4],
                        test = test_data[, 1:4],cl = train_data$Species, k = k)
conf_matrix <- table(predicted_classes , test_data$Species)
print("Confusion Matrix: ")
print(conf_matrix)
accuracy<- sum(diag(conf_matrix)) / sum(conf_matrix)
print(paste("Accuracy: ", round(accuracy ,2)))
