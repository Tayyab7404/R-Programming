# Geometric Mean:

mylength = function(data)
{
  count = 0
  
  for(i in data)
  {
    count = count + 1
  }
  
  return = count
}

GeometricMean = function(data)
{
  n = mylength(data)
  
  product = 1
  
  for(i in data)
    product = product * i
  
  return = product^(1/n)
}

print("Enter the data: ")
data = scan()

print("Geometric Mean of the given data: ")
print(data)
print(GeometricMean(data))