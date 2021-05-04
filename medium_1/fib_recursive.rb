def fibonacci(nth)
  return nth if nth < 2 
  fibonacci(nth - 1) + fibonacci(nth - 2)
end 

p fibonacci(12)