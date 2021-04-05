def lettercase(string)
  counter = { 
    upper: 0, 
    lower: 0,
    neither: 0
  } 
  
  string.chars.each do |char|
    if char.match(/[[:alpha:]]/)
      if char == char.downcase 
        counter[:lower] += 1 
      else
        counter[:upper] += 1 
      end 
    else 
      counter[:neither] += 1 
    end
  end 
    
  counter 
end 
    
p lettercase("27 hhh HH ")