# Quartile Deviation

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

QuartileDeviation = function(data)
{
  data = mysort(data)
  
  Term1 = 0.25 * (mylength(data) + 1)
  Term3 = 0.75 * (mylength(data) + 1)
  
  Q1 = (Term1 - floor(Term1)) * (data[floor(Term1)+1] - data[floor(Term1)])
  Q3 = (Term3 - floor(Term3)) * (data[floor(Term3)+1] - data[floor(Term3)])
  
  Q1 = Q1 + data[floor(Term1)]
  Q3 = Q3 + data[floor(Term3)]
  
  return = (Q3-Q1)/2
  
}

print("Enter the elements: ")
data = scan()

print("Quartile Deviation of the given data: ")
print(data)
print(QuartileDeviation(data))