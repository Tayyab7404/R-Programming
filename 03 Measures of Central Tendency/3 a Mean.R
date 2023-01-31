# Mean:

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
  
  for(i in data){
    sum = sum + i
  }
  
  return = sum/mylength(data)
} 

print("Enter the data: ")
data = scan()

print("Mean of the given data: ")
print(data)
print(mymean(data))