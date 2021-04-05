def average(array)
  result = (array.inject(:*).to_f / array.size).round(3)
  format_result = sprintf "%.3f", result
  "The result is #{format_result}."
end 

p average([2, 3, 4])
p average([6])
p average([2, 5, 7, 11, 13, 17])