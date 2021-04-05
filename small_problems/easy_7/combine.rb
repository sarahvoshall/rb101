def interweave(array1, array2)
  new_array = Array.new
  counter = 0 
  
  loop do
    break if counter == array1.length
    new_array << array1[counter]
    new_array << array2[counter]
    
    counter += 1 
  end
  
  new_array
end 

def interweave_2(ary1, ary2)
  new_ary = ary1.zip(ary2).flatten
end 

p interweave([1, 2, 3], ['a', 'b', 'c'])
p interweave_2([1, 2, 3], ['a', 'b', 'c'])