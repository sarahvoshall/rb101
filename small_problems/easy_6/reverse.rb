def reverse!(array)
  array.each do |element|
    element = array[-1]
  end 
end 

p reverse!([1, 2, 3, 4])