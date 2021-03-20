def multisum(num)
  num_array = Array.new
  while num > 0 
    if num % 3 == 0 || num % 5 == 0 
      num_array << num 
    end
    num -= 1
  end
  
  num_array.inject(:+)
end

p multisum(3)
p multisum(20)
