def halvsies(array)
  ary1 = []
  ary2 = []
  
  length = array.size / 2
  
  if array.length == 1 
    ary1 << array
    ary2 << []
  elsif array.size.odd? 
    ary1 << array[0..length]
    ary2 << array[-length..-1]
  elsif array.size.even?
    ary1 << array[0..(length - 1)]
    ary2 << array[-length..-1]
  end
  
  ary1 + ary2
end 

# LS solution

def halvsies_2(array)
  middle = ( array.size / 2.0 ).ceil
  ary1 = array.slice(0, middle)
  ary2 = array.slice(middle, array.size - middle)
  [ary1, ary2]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 2, 3, 4, 5])
p halvsies([5])

p halvsies_2([1, 2, 3, 4])