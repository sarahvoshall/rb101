def stag_case(string)
  stag_string = []
  counter = 0 
  
  loop do 
    break if counter == string.length
    
    if counter.even? 
      stag_string << string[counter].upcase
    else 
      stag_string << string[counter].downcase
    end 
    
    counter += 1 
  end 

stag_string.join
end 

p stag_case('abc def ghi')
p stag_case('ALL_CAPS')
p stag_case('ignore 77 the 444 numbers')
    