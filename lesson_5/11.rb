arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = Array.new

arr.each do |sub_arr| 
  new_arr << sub_arr.reject { |integer| integer % 3 != 0 } 
end 

p new_arr

# LS solution 

arr.map do |sub_arr| 
  sub_arr.reject do |num| 
    num % 3 != 0 
  end 
end 