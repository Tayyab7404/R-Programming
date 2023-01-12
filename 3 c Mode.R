# Mode:

deldups = function(data)
{
  newdata = c()
  
  for(i in data)
  {
    if(i %in% newdata == FALSE)
    {
      newdata = c(newdata,i)
    }
  }
  
  return = newdata
}

mylength = function(data)
{
  count = 0
  
  for(i in data)
  {
    count = count + 1
  }
  
  return = count
}

mymode = function(data)
{
  newdata = deldups(data)
  
  Maxcount = 0
  Maxindex = 0
  
  for(i in newdata)
  {
    count = 0
    
    for(j in 1:mylength(data))
    {
      if(data[j] == i)
      {
        count = count + 1
      }
      
      if(Maxcount < count)
      {
        Maxcount = count
        Maxindex = j
      }
    }
  }

  return = data[Maxindex]
}

print("Enter the data: ")
data = scan()

print("Mode of the given data: ")
print(data)
print(mymode(data))