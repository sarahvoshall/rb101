def rotate_array(array)
  array[1..-1] << array[0]
end 

# make sure to change integer into an array first... 

def rotate_rightmost_digits(integer, n)
 integer_array = integer.digits.reverse
 
 integer_array[0..(array.size - (n-1))] << rotate_array(integer_array[-n..-1])
end

p rotate_rightmost_digits(735291, 1) # == 735291
p rotate_rightmost_digits(735291, 2) # == 735219
p rotate_rightmost_digits(735291, 3) # == 735912
p rotate_rightmost_digits(735291, 4) # == 732915
p rotate_rightmost_digits(735291, 5) # == 752913
p rotate_rightmost_digits(735291, 6) # == 352917