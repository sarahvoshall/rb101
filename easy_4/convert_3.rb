ALPHANUMS = { 
  0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"
} 

def integer_to_string(integer)
  digit_array = integer.digits
  string_array = digit_array.map { |number| ALPHANUMS[number] }
  string = String.new
  string_array.map { |element| string << element }
  string
end

integer_to_string(431)

DIGITS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def integer_to_string_2(integer)
  string = String.new
  loop do 
    integer, remainder = integer.divmod(10)
    string.prepend(DIGITS[remainder])
    break if integer == 0
  end
  string
end

p integer_to_string_2(4311)