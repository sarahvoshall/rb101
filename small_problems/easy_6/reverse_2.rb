def reverse!(array)
  new_array = Array.new
  counter = -1
  
  loop do 
    break if counter == -array.size - 1
    new_array << array[counter] 
    counter -= 1 
  end
  
  new_array
end 

# LS solution using #reverse_each

def reverse(array)
  new_array = []
  
  array.reverse_each { |element| new_array << element }
  
  new_array
end 

p reverse!([1, 2, 3, 4])
p reverse!(%w(c d e f g))
p reverse!(["abc"])
p reverse!([])

p reverse([1, 2, 3, 4])