def fib_index(input)
  fib_array = [1, 1]
  
  loop do
    fib_array << fib_array.last(2).sum
    break if fib_array.last.to_s.length == input
  end 
  
  fib_array.index(fib_array.last) + 1
end

p fib_index(2)
p fib_index(3)
p fib_index(10)
p fib_index(1000)