def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
  sum = 0
  i = min
  while i <= max
    sum += i
    i += 1
  end

  return sum
end

def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  sum = 0
  for i in min.. max do
    sum = sum + i
  end

  return sum
end

def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
  if min == max
  return max
  else min + sum_recursive (min + 1, max)
  end

end

