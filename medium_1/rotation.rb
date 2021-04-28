def rotate_array(array)
	array[1..-1] << array[0]
end 

def rotate_rightmost_digits(integer, place)
	digit_array = integer.digits.reverse
	rightmost = rotate_array(digit_array.last(place)) 
	leftmost = digit_array.first(digit_array.size - place)
	(leftmost << rightmost).join.to_i
end 

# after reviewing LS solution 
# I can see that this is nice because I don't have to make so many variables...

def rotate_rightmost_digits2(number, n)
	array = number.digits.reverse
	array[-n..-1] = rotate_array(array[-n..-1])
	array.join.to_i
end 

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

