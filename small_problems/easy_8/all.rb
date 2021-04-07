def leading_substrings(string)
  array = Array.new 
  
  0.upto(string.size - 1) do |index|
    array << string[0..index]
  end 
  
  array
end 

def all_substrings(string)
  final_array = []
  
  0.upto(string.size - 1) do |index|
    final_array << leading_substrings(string[index..-1])
  end 
  
  final_array
end 

p all_substrings("henlo")

  
  