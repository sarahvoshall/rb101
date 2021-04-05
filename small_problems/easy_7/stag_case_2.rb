def staggered_case(string)
  result = String.new
  need_upper = true 
  
  string.chars.each do |char|
    if char =~ /[A-Za-z]/
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else 
      result += char
    end
  end
  
  result
end

p staggered_case('ignore 77 the 444 numbers')
p staggered_case('I Love Launch School!')