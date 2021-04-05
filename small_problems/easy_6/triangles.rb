def triangle(n)
  asterisk = String.new
  loop do
    asterisk += "*"
    puts asterisk.rjust(n)
    break if asterisk.length == n 
  end
end 

triangle(1)
triangle(2)
triangle(4)
