def fibonacci(nth)
  fib_sequence = [1, 1]

  while fib_sequence.size < nth do 
    fib_sequence << fib_sequence.last(2).sum
  end 

  fib_sequence.last 
end 

# after reviewing LS solution 

def fibonacci2(nth)
  first, last = [1, 1]
  3.upto(nth) do 
    first, last = [last, first + last]
  end 

  last
end 

p fibonacci(20)
p fibonacci2(20)
  