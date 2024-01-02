install.packages("psych")
library(psych)
data("mtcars")
head(mtcars)
my_data <- mtcars[, c("mpg", "disp", "hp", "drat", "wt")]
str(my_data)
#apply f a 
factor_result <- fa(my_data,nfactors = 2 , rotate = "varimax")
print(factor_result)
eigen_values <- factor_result$values
plot(1:length(eigen_values),eigen_values,type = "b", main = "Sceren plot _eigen" , xlab = "X-axis", ylab = "Y - axis")
