def prompt(message)
  puts "=> #{message}"
end

prompt("Enter a positive integer.")
num1 = gets.chomp.to_i

prompt("Enter another positive integer.")
num2 = gets.chomp.to_i

sum = num1 + num2
difference = num1 - num2
product = num1 * num2
quotient = num1 / num2 
modulo = num1 % num2
power = num1 ** num2

prompt("#{num1} + #{num2} = #{sum}")
prompt("#{num1} - #{num2} = #{difference}")
prompt("#{num1} * #{num2} = #{product}")
prompt("#{num1} / #{num2} = #{quotient}")
prompt("#{num1} % #{num2} = #{modulo}")
prompt("#{num1} ** #{num2} = #{power}")