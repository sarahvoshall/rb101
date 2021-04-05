def multiply(ary1, ary2)
  new_ary = []
  counter = 0 
  
  loop do
    break if counter == ary1.length
    
    counter_2 = 0 
    loop do 
      break if counter_2 == ary2.length
      new_ary << ary1[counter] * ary2[counter_2]
      counter_2 += 1 
    end 
    
    counter += 1 
  end 
  
  new_ary.sort
end 

p multiply([2, 4], [4, 3, 1, 2])
  