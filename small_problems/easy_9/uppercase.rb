LOWERCASE = %w(q w e r t y u i o p a s d f g h j k l z x c v b n m)

def uppercase_checker(string)
  LOWERCASE.include?(string) ? true : false 
end 

uppercase_checker("237fsje83")