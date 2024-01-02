data(mtcars)
head(mtcars)
set.seed(123)
sample_indices <- sample(1:nrow(mtcars),0.7*nrow(mtcars))
train_data <- mtcars[sample_indices,]
test_data <- mtcars[-sample_indices,]
mlr <- lm(mpg~wt+hp+cyl,data = train_data)
predictions <- predict(mlr,newdata = test_data)
conf_matrix <- table(predictions,test_data$mpg)
print(conf_matrix)

mse <- mean(predictions - test_data$mpg)^2
print(mse)
rmse <- sqrt(mse)
print(rmse)
r1_score <- 1 - (sum((test_data$mpg - predictions)^2) / sum((test_data$mpg - mean(test_data$mpg))^2))
print(r1_score)
