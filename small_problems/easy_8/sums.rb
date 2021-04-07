def sum(array)
  sum_array = []
  counter = 0 
  
  array.each do |int| 
    sum_array << int * (array.length - counter) 
    counter += 1
  end 
  
  sum_array.sum
end 

p sum([3, 5, 2])

# after reviewing LS solution 

def sums2(array)
  total = 0
  accumu = 0 
  
  array.each do |num|
    accumu += num
    total += accumu 
  end 
  
  total 
end 

p sum([3, 5, 2])