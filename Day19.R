library(randomForest)
data(iris)
set.seed(123)
head(iris)
sample_indices <- sample(1:nrow(iris),0.7*nrow(iris))
train_data<-iris[sample_indices,]
test_data <- iris[-sample_indices,]

random_forest_model <- randomForest(Species~.,data = train_data)
prediction <- predict(random_forest_model, newdata = test_data)

conf_matrix <- table(prediction, test_data$Species)
print(conf_matrix)
accuracy <- sum(diag(conf_matrix)/sum(conf_matrix))
print(accuracy)
precision <- conf_matrix[2,2]/sum(conf_matrix[,2])
print(accuracy)
recall <- conf_matrix[2,2]/sum(conf_matrix[2,])
print(precision)
f1_score <- 2*(precision*recall)/(precision+recall)
print(f1_score)
