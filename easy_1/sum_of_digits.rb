def digit_sum(number)
    num_array = number.to_i.digits
    num_array.reduce(:+)
end 

p digit_sum(18_449)
p digit_sum(123_456_789)