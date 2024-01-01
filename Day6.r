df = read.csv(file = "/Users/shubhankardutta/Documents/Study_Materials_Presidency_University/7CAI2/R Programming/CSV/Iris.csv")
print(df)

#Count the number of variable and number of records present in the df
print("Number of variable :")
ncol(df)
print("Number of Records :")
nrow(df)
dim(df)

#display the first 15 records of iris dataset
sample_n(df,15)

#selecting random fraction of rows for a given dataset
sample_frac(df,0.2)

#Remove duplicate rows based on all variables
X1=distinct(df)
print(X1)
#Remove duplicate rows based on a variable
#Display the unique Species in the dataset
X2=distinct(df,Species,.keep_all=TRUE)
print(X2)
#Multiple Variable
X3=distinct(df,SepalLengthCm,SepalWidthCm,.keep_all=TRUE)
print(X3)

#display only the col Species from iris dataset
X4 = select(df,Species)
print(X4)
#display only those rows belonging to some perticular Species
filter(df,Species=='Iris-virginica')

#Removing the variable or Col from the dataset
X5=select(df,-SepalLengthCm)
print(X5)

#Display only those col or variable from the datsset whose name start with S
select(df,starts_with("S"))
#Ends_With
select(df,ends_with("M"))
#Contains
select(df,contains("I"))
#display only col which has first letter as S and last letter is m 
select(df,matches('S*M'))

#Display only those col whose first five char are sepal followed by l or w 
#from seven char anything
select(df,matches('Sepal[lw]'))

#reordering the variable
#Display last col in first
select(df,Species,everything())
#Rename
df2 = rename(df,Species_new=Species)
print(df2)

#Multiple selection criteria
#display only those col whose name starts with s or p 
n= filter(df , Species %in% c("S","P"))
print(n)

#and 
filter(df,Species %in% c("I","A") & Id>=10)
#or |
filter(df,Species %in% c("I","A") | Id>=10)
#not !
filter(df,!Species %in% c("I","A"))
