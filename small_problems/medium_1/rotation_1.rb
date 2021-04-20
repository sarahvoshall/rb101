def rotate_array(array)
  array[1..-1] << array[0]
end 

x = [1, 2, 3, 4]
p rotate_array(x) 
p rotate_array(['a', 'b', 'c'])
