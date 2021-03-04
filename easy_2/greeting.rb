def prompt(message)
  puts "=> #{message}"
end

prompt("What is your name?")
response = gets.chomp

if response.include?("!")
  response.delete! "!"
  prompt("HELLO #{response.upcase}. WHY ARE WE SCREAMING?")
else 
  prompt("Hello #{response}.")
end
