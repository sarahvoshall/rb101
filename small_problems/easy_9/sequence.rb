def sequence(length, number)
  array = []
  count = 0
  
  1.upto(length) do |x| 
    if number > 0 
      count += number
      array << count
    elsif number <= 0 
      count -= number 
      array << -count
    elsif number == 0 
      array << 0
    end 
  end
  
  array
end 
 
p sequence(12, -2)

# after reviewing LS solution 

def sequence2(num1, num2)
  1.upto(num1).map { |num| num * num2 } 
end 

p sequence2(3, -5)

