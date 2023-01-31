# Median:

mylength = function(data)
{
  count = 0
  
  for(i in data)
  {
    count = count + 1
  }
  
  return = count
}

mysort = function(data){
  n = mylength(data)
  
  for(i in 1:(n-1))
  {
    for(j in 1:(n-1))
    {
      if(data[j] > data[j+1])
      {
        temp = data[j]
        data[j] = data[j+1]
        data[j+1] = temp
      }
    }
  }
  
  return = data
}

mymedian = function(data){
  data = mysort(data)
  
  mylength(data) -> n
  
  if(n %% 2 != 0){
    return = data[(n %/% 2) + 1]
  }
  
  else{
    x = data[n/2] + data[(n/2) + 1]
    return = x/2
  }
}

print("Enter the data: ")
data = scan()

print("Median of the given data: ")
print(data)
print(mymedian(data))