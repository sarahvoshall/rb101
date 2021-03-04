def prompt(message)
  puts ">> #{message}"
end 

loop do
  integer = nil
  operation = nil
  loop do 
    prompt("Enter an integer greater than 0.")
    integer = gets.chomp.to_i
    break if integer > 0 
    prompt("Uh oh. Something doesn't look right.")
  end
  
  loop do 
    prompt("Enter s to calculate sum, and p to calculate product.")
    operation = gets.chomp.downcase
    break if operation = "s" || "p"
    prompt("Uh oh. Something doesn't look right.")
  end
  
  array = (1..integer).to_a
  
  case operation 
    when "s"
      prompt("The sum of the integers between 1 and #{integer} is #{array.inject(:+)}.") 
    when "p"
      prompt("The product of the integers between 1 and #{integer} is #{array.inject(:*)}.") 
  end 
  
  prompt("Do you want to make another calculation? Hit Y for another.")
  answer = gets.chomp.downcase
  break unless answer.start_with?("y")
end 

prompt("Thank you for using yet another calculator.")

