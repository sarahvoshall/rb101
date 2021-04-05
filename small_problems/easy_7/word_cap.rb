def word_cap(string)
  title = String.new
  
  string.split.each do |word|
    title << word.capitalize + " "
  end 
  
  title
end 

def word_cap_2(string)
  title = [] 
  
  string.split.each do |word|
    title << word.capitalize 
  end 
  
  title.join(" ")
end 

p word_cap('henlO how are U today ?@? ')
p word_cap_2('henlO how are U today ?@? ')
    