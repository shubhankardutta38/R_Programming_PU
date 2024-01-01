p_name=c("Shubhankar","Ayush","Sarkar","Arnab","Rahul","Rakesh")
mod =c("Jan","Feb","Apr","Aug","Jun","Sept")
bs=c(120,140,150,110,98,122)
bp=c(80,120,110,95,110,100)

df = data.frame(p_name,mod,bs,bp)
print(df)
#add  new patient 
df = rbind(df,data.frame(p_name="Arun",mod="Jan",bs=180,bp=90))
print(df)
df = rbind(df,data.frame(p_name="Priya",mod="Feb",bs=160,bp=114))
print(df)

#add new col 
df= cbind(df,"Age"=c(21,23,22,22,21,43,23,54))
print(df)
df= cbind(df,"Add"=c("WB","TN","KA","KA","UP","NL","KA","KA"))
print(df)
#deleting age col
df= df[,-5]
#df= df[,-6]
print(df)
#for import a library : install.packages("")
library(reshape2)
df1 = melt(df,id.var =c("p_name","mod"),measure.var = c("bs","bp"))
df1
df2=dcast(df1,variable+mod ~ p_name,value.var = "value")
df2
df3=recast(df1,variable+mod ~ p_name,value.var = "value")
df3


