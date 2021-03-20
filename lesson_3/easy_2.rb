ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages["Spot"]
p ages.include?("Spot")
p ages.any?("Spot") # works, but not a very good one. 
p ages.dig("Spot")

munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase!
p munsters_description.capitalize!
p munsters_description.downcase!
p munsters_description.upcase!

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("Dino")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.concat(%w(Dino Hoppy))

advice = "Few things in life are as important as house training your pet dinosaur."
# advice.slice!(0..38)
advice.slice!("Few things in life are as important as ")
p advice 

statement = "The Flintstones Rock!"
p statement.count("t")

title = "Flintstone Family Members"
p title.center(40)