def swapcase(string)
  swapcase_string = string.chars.map do |char|
    if char.match(/[[:alpha:]]/)
      if char == char.downcase 
        char.upcase 
      else 
        char.downcase
      end
    else 
      char
    end 
  end
  
  swapcase_string.join
end 

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')

