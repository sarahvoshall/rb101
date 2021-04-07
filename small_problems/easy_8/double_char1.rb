def repeater(string)
  new_string = String.new
  string.chars.each do |char|
    new_string += char * 2 
  end
  new_string
end 

p repeater("hello")