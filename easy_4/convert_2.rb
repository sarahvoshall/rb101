DIGITS = {  
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
}

def string_to_integer(string)
  digits = string.chars.map { |element| DIGITS[element] }
  
  value = 0 
  digits.each { |number| value = value * 10 + number }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when "-" then -string_to_integer(string[1..-1])
  when "+" then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer("-431")
p string_to_signed_integer("+431")