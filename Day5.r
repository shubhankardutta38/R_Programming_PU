#Morning Class----
#nchar function

A="Hello!"
result1 = nchar("Count the number of char")
print(result1)
toupper(A)
tolower(A)

#subString
result2 = substring("Extract",5,7)
print(result2)
result3 = substring("Extract",2,7)
print(result3)

#file handling in R
#create a csv file containing following attributes 
#emp_name, emp_id, dept, salary,course_name
#read a csv file using build-in function
df = read.csv(file = "/Users/shubhankardutta/Desktop/Rcssv.csv")
print(df)

#display the name of the emp whose salary is greater than 50000
df1=subset(df,Salary>50000)
print(df1)


#find the min salary max salary avg salary and sd from the entered data
max=max(df$Salary)
print(max)
   
min=min(df$Salary)
print(min)     

mean=mean(df$Salary)
print(mean)


#extract info of those emp who belong to the dept cse and store the result in a file
df2=subset(df,Dept=="cse")
print(df2)
df3 = write.csv(df2,file ="/Users/shubhankardutta/Desktop/csvdf3.csv")

#creating an array in R
v= c("red","green","yellow","black","white","green","yellow","black","white")
a1=array(v,dim = c(3,3,1))
a1

a1=array(v,dim = c(3,3,3))
a1
a1=array(v,dim = c(3,2,1))
a1
a1=array(v,dim = c(3,4,2))
a1

#Factor function 
#it's a function which can be use for creating a levels as a column header by
#extracting a unique values from a attribute '
v1=factor(v)
v1
#count the number of levels
v2= nlevels(factor(v))
v2



#afternoon Class----
library(ggplot2)
X= c(2,3,4,5,1,3,6,9,2)
Y= c(2,3,2,5,4,1,10,7,8)
df = data.frame(X,Y)
plot(X,Y,lty=2,lwd=2,pch=10,main = "Scatter Plot",xlab = "X-Axis",ylab = "Y_Axis",type = "l",col="Blue")
plot(df,lwd=2,pch=10,main = "Scatter Plot",xlab = "X-Axis",ylab = "Y_Axis",type = "l",col="Blue")

#barplot
Categories = c("X","Y","Z","A")
Values = c(120,132,212,187)
barplot(Values,names.arg = Categories,main = "BarPLot",xlab = "categories",ylab = "values")

#creating  histogram
data = c(1,2,2,3,3,6,7,8,9)
hist(data,main = "histogram",xlab = "X-Axis",ylab = "y-Axis",col = "LightBlue")

