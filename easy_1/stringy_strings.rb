def stringy(num)
    num_string = Array.new
    
    (num / 2).times do 
       num_string << "10"
    end 
    
    if num.odd?
        num_string << "1"
    end

    num_string.join
end 

# after examination of provided solution and integration of ternary 

def stringle(size)
    numbers = Array.new
    
    size.times do |x|
        number = x.even? ? 1 : 0 
        numbers << number
    end 
    
    numbers.join
end 

p stringy(8)
p stringy(7)
p stringy(4)

p stringle(4)
        