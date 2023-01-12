# Range:

myRange = function(data)
{
  max = data[1]
  min = data[1]
  
  for(i in data)
  {
    if(i > max) max = i
    if(i < min) min = i
  }
  
  return = max-min
}

print("Enter the data: ")
data = scan()

print("Range of the given data:")
print(data)
print(myRange(data))