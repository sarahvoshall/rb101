advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub("important", "urgent")

famous_words = "seven years ago..."

pre_famous_words = "Four score and"

p pre_famous_words + " " + famous_words 

p famous_words = "#{pre_famous_words} seven years ago..."

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select! { |element, index| index == 2 }
p flintstones.assoc("Barney")

