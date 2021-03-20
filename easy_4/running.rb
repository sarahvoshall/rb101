def running_total(array)
  sum = 0
  array.map { |element| sum += element }
end

p running_total([2, 7, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])