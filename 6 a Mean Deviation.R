# Mean Deviation:

mylength = function(data)
{
  count = 0
  
  for(i in data)
  {
    count = count + 1
  }
  
  return = count
}

mymean = function(data){
  sum = 0
  n = mylength(data)
  
  for(i in data){
    sum = sum + i
  }
  
  return = sum/n
} 

MeanDeviation = function(data)
{
  mean = mymean(data)
  n = mylength(data)
  sum = 0
  
  for(i in data)
  {
    sum = sum + abs(mean-i)
  }
  
  return = sum/n
}

print("Enter the data: ")
data = scan()

print("Mean Deviation of the given data: ")
print(data)
print(MeanDeviation(data))