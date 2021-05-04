def fibonacci2(nth)
  first, last = [1, 1]

  3.upto(nth) do 
    first, last = [last, first + last]
  end 

  last
end 

def fibonacci_last(nth)
  fibonacci2(nth).digits.reverse.last
end 

p fibonacci_last(20)        
