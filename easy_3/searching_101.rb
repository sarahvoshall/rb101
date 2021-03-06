def prompt(message)
  puts "=> #{message}"
end 

array = Array.new

prompt("Enter the first number.")
array << gets.chomp.to_i

prompt("Enter the second number.")
array << gets.chomp.to_i

prompt("Enter the third number.")
array << gets.chomp.to_i

prompt("Enter the fourth number.")
array << gets.chomp.to_i

prompt("Enter the fifth number.")
array << gets.chomp.to_i

prompt("Enter the final number to check the array.")
check = gets.chomp.to_i

if array.include?(check) 
  prompt("Your number #{check.to_s} is included in the array #{array}.")
else 
  prompt("Your number #{check.to_s} is not included in the array #{array}.")
end
