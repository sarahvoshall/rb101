def palindrome?(string)
  string == string.reverse
end
 
def real_palindrome?(string)
  mod_string = string.downcase.delete(" ").gsub(/[[:punct:]]/, '')
  palindrome?(mod_string)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')         
p real_palindrome?("Madam, I'm Adam") 
p real_palindrome?('356653')
p real_palindrome?('356a653') 
p real_palindrome?('123ab321')