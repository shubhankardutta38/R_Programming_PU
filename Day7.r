#create a dataframe with missing value
ht=c(46,NA,NA,67)
d = data.frame(name =c("Abhi","Bhavesh","Chaman","Raj"),age=c(7,9,8,16),ht,school=c("yes","yes","no,","no"))
#Finding rows with missing value
filter(d,is.na(ht))
#finding rows with no NA value
filter(d,! is.na(ht))

head(airquality)
mean(airquality$Solar.R)
mean(airquality$Ozone)
mean(airquality$Wind)

#handlig NA values
mean(airquality$Solar.R,na.rm = TRUE)
summary(airquality)

#in r , the function used for performing a chi-square test 
chisq.test(d$age,d$ht)
chisq.test(d$name,d$age)
chisq.test(d$age,d$school)
chisq.test(d$school,d$age)

#airquality
chisq.test(airquality$Solar.R,airquality$Ozone)
chisq.test(airquality$Ozone,airquality$Wind)


library(Rdimtools)
do.fscore(d,ndim=2)
