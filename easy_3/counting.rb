def prompt(message)
  puts "=> #{message}"
end

prompt("Enter any word or words.")
string = gets.chomp
length = string.delete(" ").size

prompt("There are #{length} characters in \"#{string}\".")