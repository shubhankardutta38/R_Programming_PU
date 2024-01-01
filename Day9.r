install.packages("psych")
library(psych)
data("mtcars")
my_data = mtcars[,c("mpg","disp","hp","drat","wt")]
#check the structure of the data
str(my_data)
factor_results = fa(my_data,nfactors = 2,rotate = "varimax")
print(factor_results)
eigenvalue = factor_results$values
plot(1:length(eigenvalue),eigenvalue,type = "b",
     main = "Screen plot",xlab = "Factor",ylab = "EigenValues")
