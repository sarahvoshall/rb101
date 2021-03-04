def prompt(message)
  puts "=> #{message}"
end 

age = (20..200).to_a

loop do 
  prompt("Teddy is #{age.sample} years old.")
  break if age.sample == 25 
end
