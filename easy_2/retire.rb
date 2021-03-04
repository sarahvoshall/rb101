def prompt(message)
    puts "=> #{message}"
end 

prompt("How old are you?")
age = gets.to_i

prompt("When do you want to retire?")
retire_age = gets.to_i 

current_year = Time.now.year
difference = retire_age - age
year = current_year + difference

prompt("The year is 2021, you will retire in #{year}, in #{difference} years.")