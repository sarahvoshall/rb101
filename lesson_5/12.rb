arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = Hash.new 

arr.each do |array| 
  hash[array.first] = array.last
end 

p hash