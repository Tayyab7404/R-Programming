# Normal Distribution:

lower = c(1,3,5,7,9)
upper = c(3,5,7,9,11)
x = (lower+upper)/2
f = c(1,4,6,4,1)
fx = f*x
fxx = f*x*x

Sumf = sum(f)
Sumfx = sum(fx)
Sumfxx = sum(fxx)

mean = Sumfx/Sumf
SD = (sum(f*(x-mean)^2)/Sumf)^0.5

Z1 = (lower-mean)/SD
Z2 = (upper-mean)/SD

Px = pnorm(Z2) - pnorm(Z1)

NPx = Sumf*Px

fe = round(NPx)

Data = data.frame(lower,upper,x,f,fx,fxx,Z1,Z2,Px,NPx,fe)
Data = rbind(Data,c("","","",Sumf,Sumfx,Sumfxx,"","","","",""))

print(Data,row.names = FALSE)

ChiSq = sum(((f-NPx)^2)/NPx)
ChiSqtable<-qchisq(.95, df=length(x)-1)

print(paste("Chi square Calculated value = ",ChiSq))
print(paste("Chi square Table value = ",ChiSqtable))

if(ChiSq>ChiSqtable)
{
  print("H0 is Rejected")
  print("H1 is accepted")
  print("The given data doesnot follow Normal Distribution")
}else {
  print("H0 is accepted")
  print("H1 is Rejected")
  print("The given data follows Normal Distribution")
}