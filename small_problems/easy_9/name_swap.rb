def name_swap(string)
  name_array = string.split
  "#{name_array[1]}, #{name_array[0]}"
end 

p name_swap("Sarah Voshall")