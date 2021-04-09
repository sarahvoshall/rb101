def grocery_list(outer)
  list = []
  outer.each do |inner| 
    inner[1].times { list << inner[0] }
  end 
  list 
end 

p grocery_list([["apples", 3], ["orange", 1], ["bananas", 2]])