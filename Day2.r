#without using row and col
A=matrix(c(1,2,3,4,5,6,7,8,9)) 
print(A)
A=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
print(A)
#using byrow in A matrix
B=matrix(c(1,2,3,4,5,6,7,8,9),ncol=3,byrow = TRUE)
print(B)
#create a matrix of order 3*4 containing all the matrix element as 3
matrix(3,4,3)
#create a diagonl matrix 
diag(c(4,5,6),3,3)
#creating sample matrices
matrix(c(3,5,-2,0),nrow = 2, ncol = 2,byrow = TRUE)
matrix(c(1,10,3,-1,7,5),nrow = 3, ncol = 2, byrow = TRUE)
C=matrix(c(3,3,4,0,1,2,-1,-2,-3,3,4,3),nrow = 4,ncol = 3,byrow = TRUE)

#Matrix metrices
#size of matrix C
dim(C)
#NO of Row
nrow(C)
#No of Col
ncol(C)
#length of matrix
length(C)

#Accessing,editing,deleting in elements in matrices

# 2nd-row deletion
C = C[-2, ]
print(C)

#Accessing rows and cols
#display the first 2 col values of a given matrices
C[,1:2]
#display only 3rd col
C[,3]
#display only 2nd row & all col
C[2,]

#display 2nd and 3rd row
C[c(2,3),]

#display 1st row and 2nd col
C[1,2]
#display 2nd row 3rd col
C[2,3]

#access the last row
C[nrow(C),]

#display all the rows except the 2nd row
C[-2,]

D= matrix(c(1,7,3,4,4,6,4,7,12),nrow = 3,ncol = 3,byrow = TRUE)
print(D)
#change 12 to 13
D[3,3]=13
print(D)

#Colon Operator
1:10
10:1

#display first 2 col of 1st and 3rd row
D[c(1,3),1:2]
#or
D[c(1,3),c(1,2)]

#display first 2 rows of 1st and 3rd col
D[c(1,2),c(1,3)]

#Afternoon Class

#Concatenation of a row
rbind()
#Concatenation of a Col
cbind()

X=matrix(c(10,11,12),nrow = 3,ncol = 1,byrow = TRUE)
print(X)
Y=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3,byrow = TRUE)
print(Y)
#use of cbind for A & B matrix
cbind(X,Y)
rbind(X,Y)#error
Z=Y=matrix(c(2,2,2),nrow = 1,ncol = 3,byrow = TRUE)
print(Z)
rbind(Y,Z)


#addition,subtraction and multiplication
print(A)
print(B)
E=A+B
print(E)
E=A-B
print(E)
E=A*B
print(E)
E=A%%B
print(E)
