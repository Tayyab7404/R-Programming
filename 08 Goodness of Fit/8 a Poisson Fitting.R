# Poisson Distribution:

x = c(0,1,2,3,4,5,6,7,8)
f = c(103,143,98,42,8,4,2,0,0)

Sumf = sum(f)

fx = f*x
Sumfx = sum(fx)

n = max(x)
lambda = Sumfx/Sumf

Px = c()

for(i in x)
{
  temp = (exp(-lambda)*(lambda^i))/factorial(i)
  
  Px = c(Px,temp)
}

NPx = Sumf*Px

result = round(NPx)

Data = data.frame(x,f,fx,Px,NPx,result)

sums = list("",Sumf,Sumfx,"","",sum(result))
Data = rbind(Data,sums)

print(Data,row.names=FALSE)

ChiSq = sum(((f-NPx)^2)/NPx)
ChiSqtable<-qchisq(.95, df=n)

print(paste("Chi square Calculated value = ",ChiSq))
print(paste("Chi square Table value = ",ChiSqtable))

if(ChiSq>ChiSqtable)
{
  print("H0 is Rejected")
  print("H1 is accepted")
  print("The given data doesnot follow Poisson Distribution")
}else {
  print("H0 is accepted")
  print("H1 is Rejected")
  print("The given data follows Poisson Distribution")
}