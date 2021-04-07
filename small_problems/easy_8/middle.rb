def middler(string)
  center = string.size / 2
  if string.size.even? 
    string[center - 1] + string[center]
  else 
    string[center]
  end 
end 

p middler("helloo")
p middler("henlo")
p middler('Launchschool')