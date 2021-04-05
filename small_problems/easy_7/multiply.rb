def multiply(ary1, ary2)
  new_ary = []
  counter = 0 
  
  loop do 
    break if counter == ary1.length
    new_ary << (ary1[counter] * ary2[counter])
    counter += 1 
  end 
  
  new_ary
end

p multiply([1, 2, 3], [3, 4, 5])