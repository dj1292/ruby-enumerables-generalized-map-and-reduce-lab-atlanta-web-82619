def map(array)
  newArray  = []
  i = 0 
  while i < array.length 
  newArray << yield(array[i])
  i += 1 
  end
  return newArray
end 


def reduce(array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0 
  else 
    array[0] = sum 
    i = 1 
  end 
  while i < array.length
  sum = yield(sum, array[i])
  i += 1 
  end 
   sum
end  