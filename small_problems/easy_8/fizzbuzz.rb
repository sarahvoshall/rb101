def fizzbuzz(int1, int2)
  (int1..int2).each do |int|
    if int % 3 == 0 && int % 5 == 0 
      "FizzBuzz"
    elsif int % 3 == 0 
      "Fizz"
    elsif int % 5 == 0 
      "Buzz"
    else
     int 
    end 
  end
end 
     
p fizzbuzz(1, 15)

# after reviewing LS solution and recognizing my solution was overly repetitive 

def fizzbuzz_value(int)
  case
  when int % 3 == 0 && int % 5 == 0 
    "FizzBuzz"
  when int % 3 == 0 
    "Fizz"
  when int % 5 == 0  
    "Buzz"
  else 
    int 
  end
end 

def fizzbuzz_2(int1, int2)
  fizarray = []
  
  int1.upto(int2).each do |num|
    fizarray << fizzbuzz_value(num)
  end 
  
  fizarray.join(', ')
end 

p fizzbuzz_2(1, 23)