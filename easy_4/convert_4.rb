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

def integer_to_signed_string(integer)
  signed_string = String.new
  if integer * -1 < 0
    signed_string = integer_to_string_2(integer)
    signed_string.prepend("+")
  elsif integer * -1 > 0
    signed_string = integer_to_string_2(-integer)
    signed_string.prepend("-")
  else 
    signed_string = integer_to_string_2(integer)
  end 
  signed_string
end

# LS solution

def integer_to_signed_string_2(integer)
  case integer <=> 0
  when -1 then "-#{integer_to_string_2(-integer)}"
  when +1 then "+#{integer_to_string_2(integer)}"
  else          integer_to_string_2(integer)
  end
end

p integer_to_signed_string(-1232)

p integer_to_signed_string_2(-1232)