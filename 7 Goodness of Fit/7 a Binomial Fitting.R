# Binomial Distribution:

x = c(0,1,2,3,4,5,6)
f = c(13,25,52,58,32,16,4)

Sumf = sum(f)

fx = f*x
Sumfx = sum(fx)

n = length(x)-1
p = (Sumfx/Sumf)/n
q = 1-p

Px = c()

for(i in x)
{
  temp = ncr(n,i)*(p^i)*(q^(n-i))
  
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
  print("The given data does not follow Binomial Distribution")
}else {
  print("H0 is accepted")
  print("H1 is Rejected")
  print("The given data follows Binomial Distribution")
}