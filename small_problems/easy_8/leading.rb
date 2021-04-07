def substringer(string)
  new_arr = Array.new
  sub_arr = String.new
  
  string.chars.each do |char| 
    sub_arr += char
    new_arr << sub_arr
  end 
  
  new_arr
end 

p substringer("xyzzy")

# after reviewing LS solution, and without creating too many variables 

def substringer2(string)
  array = Array.new 
  
  0.upto(string.size - 1) do |index|
    array << string[0..index]
  end 
  
  array
end 

p substringer2("henlo")