def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size = 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
        if is_an_ip_number?(word)
          next
        else 
          return false
        end
    end
    return true
  else 
    return false 
  end 
end 