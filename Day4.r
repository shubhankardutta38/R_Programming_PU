#Morning Class

Biggest = function(a,b)
{
  if(a>b)
    print("A is biggest")
  else 
    print("B is Biggest")
}
Biggest(10,8)
Biggest(8,10)

Circle = function(r){
  print("Area: ")
  print(pi*r*r)
  print("CF: ",)
  print(2*pi*r)
}
Circle(2)


Circle2 = function(r)
{
  A=pi*r*r
  C=2*pi*r
  Result= list("Area of Cir",A,"Circ",C)
  return(Result)
}
Circle2(3)


#Biggest of three numbers
BiggestofThree = function(x,y,z)
{
  if(x>y)
    if(x>z)
      print("X is Biggest")
    else 
      print("Z is Biggest")
  else if (y>z)
      print("Y is Biggest")
    else
      print("Z is Biggest")
}
BiggestofThree(10,11,14)


#Loop

numbers = seq(1, 10)

# Use a for loop to print the numbers
for (i in numbers) {
  print(i)
}

# sum of 1st 10 numbers
sum=0
for( i in seq(1,10,1))
{
  sum= sum+i
}
print(sum)

#write a program to print even numbers b/w 1 to 10 
total = 0
i = 1
while (i<=10) {
  total = total +i
  i= i +1
}
print(total)

#Repeat
i=0
sum=0
repeat
{
  sum= sum+i
  i = i+1
  if(i>10)
    (break)
}
print(sum)


#Switch
val1 = 6  
val2 = 7
val3 = "s"  
result = switch(  
  val3,  
  "a"= c("Addition =", val1 + val2),  
  "d"= c("Subtraction =", val1 - val2),  
  "r"= c("Division = ", val1 / val2),  
  "s"= c("Multiplication =", val1 * val2),
  "m"= c("Modulus =", val1 %% val2),
  "p"= c("Power =", val1 ^ val2)
)  
print(result)

#Afternoon Class
val1 = 6  
val2 = 7
val3 = "r"  
result = switch(  
  val3,  
  "a"= c("Addition =", val1 + val2),  
  "d"= c("Subtraction =", val1 - val2),  
  "r"= c("Division = ", val1 / val2),  
  "s"= c("Multiplication =", val1 * val2),
  "m"= c("Modulus =", val1 %% val2),
  "p"= c("Power =", val1 ^ val2)
)  
print(result)
#with numaric value
val1 = 6  
val2 = 7
val3 = "1"  
result = switch(  
  val3,  
  "1"= c("Addition =", val1 + val2),  
  "2"= c("Subtraction =", val1 - val2),  
  "3"= c("Division = ", val1 / val2),  
  "4"= c("Multiplication =", val1 * val2),
  "5"= c("Modulus =", val1 %% val2),
  "6"= c("Power =", val1 ^ val2)
)  
print(result)


#Strings

a = "Hello"
b = "how"
c = "are you ?"

print(paste(a,b,c))
print(paste(a,b,c,sep = "-"))
print(paste(a,b,c,sep = " ",collapse = " "))

#format

results = format(23.123456789,digits=9)
print(results)
#Scientific
result=format(6,13.12345,Scientific=TRUE)
print(result)

result= format(23.47,nsmall = 5)
print(result)


result =  format(6)
print(result)

result = format(13.7,width = 6)
print(result)

result = format("Hello",width= 6,justify ="l")
print(result)

result = format("Hello",width = 6 , justify ="c")
print(result)


#nchar function
result = nchar("Count the number of char")
print(result)
toupper(a)
A="World"
tolower(A)
#substring
res = substring("Extract",5,7)
print(res)

