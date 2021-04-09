def doubler(number)
  center = number.to_s.length / 2
  half1 = number.to_s[0..(center - 1)]
  half2 = number.to_s[center..-1]
  
  if number.to_s.length.even? && half1 == half2
    number
  else
    number *= 2
  end
end

p doubler(123)
p doubler(5)
p doubler(1212)