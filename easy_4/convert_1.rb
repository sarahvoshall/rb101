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

p string_to_integer("431")