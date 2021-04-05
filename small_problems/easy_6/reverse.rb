def reverse!(array)
  array.sort! { |a, b| b <=> a }
end 

# doesn't work if there are duplicates in the list... :( 

# LS solution 

def reverse_2!(array)
  left_index = 0
  right_index = -1 
  
  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    
    left_index += 1 
    right_index -= 1
  end
  
  array
end

p reverse!([1, 2, 3, 4, 2])
p reverse!(["a", "b", "c"])
p reverse!(['abc'])
p reverse!([])

p reverse_2!([1, 2, 3, 4])
