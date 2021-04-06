arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = Array.new 

arr.each do |array|
  array.sort! do |a, b|
    b <=> a 
  end
  
  sorted_arr << array
end

p sorted_arr

# LS solution 

arr.map do |sub_arr| 
  sub_arr.sort do |a, b|
    b <=> a 
  end 
end 
