CONSONANTS = %w(q w r t y p s d f g h j k l z x c v b n m)

def consonant_repeater(string)
  new_string = String.new
  
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      new_string += char * 2 
    else 
      new_string += char
    end
  end
  
  new_string
end 

p consonant_repeater("July 4th")