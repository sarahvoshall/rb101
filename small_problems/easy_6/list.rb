def include?(array, match)
  array.any?(match)
end 

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)