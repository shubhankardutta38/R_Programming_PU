install.packages("caret")
library(caret)
install.packages("e1071")
library(e1071)
data(iris)
set.seed(123)
sample_indices <- sample(1:nrow(iris),0.7*nrow(iris))
train_data <- iris[sample_indices,]
test_data <- iris[-sample_indices,]
head(iris)
svm_model <- svm(Species~., data = train_data) #svm model
predictions <- predict(svm_model,newdata = test_data)

conf_mat <- table(predictions,test_data$Species)
print(conf_mat)
