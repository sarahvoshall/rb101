def digit_list(num)
    num_array = num.to_s.split("")
    num_array.map { |numba| numba.to_i }
end 

p digit_list(12345)
p digit_list(68584)

# after examination of provided solution... and integration of (&:to_i) shorthand

def digit_list_nicer(numso)
    numso.to_s.chars.map(&:to_i)
end 

p digit_list_nicer(8349348834)