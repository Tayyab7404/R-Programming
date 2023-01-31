# Harmonic Mean:

mylength = function(data)
{
  count = 0
  
  for(i in data)
  {
    count = count + 1
  }
  
  return = count
}

HarmonicMean = function(data)
{
  sum = 0
  n = mylength(data)
  
  for(i in data)
  {
    sum = sum + (1/i)
  }
  
  return = n/sum
}

print("Enter the elements: ")
data = scan()

print("Geometric Mean of the given data: ")
print(data)
print(HarmonicMean(data))