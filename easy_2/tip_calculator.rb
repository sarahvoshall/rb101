def prompt(message)
  puts "=> #{message}"
end 

prompt("What is the bill?")
amount = gets.to_f

prompt("What is the tip percentage?")
percentage = gets.to_f / 100

tip = (amount * percentage).round(2)
total = (amount + tip).round(2)

prompt("The tip amount is $#{tip}.")
prompt("The total is $#{total}.")