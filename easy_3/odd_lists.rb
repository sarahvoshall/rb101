def oddities(array)
  index = 0 
  odd_array = Array.new

  loop do 
    if index.even? 
      odd_array << array[index]
    end
    index += 1 
    break if index == array.length
  end

  p odd_array
end

array = [1, 2, 3, 4, 5]
array2 = %w(q w e r t y)

oddities(array)
oddities(array2)