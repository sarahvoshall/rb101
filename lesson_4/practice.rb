flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"] 

def hashmaker(array)
  hash = Hash.new
  counter = 0
  
  loop do 
    break if counter == array.size
    
    current_element = array[counter]
    hash[current_element] = counter
    
    counter += 1
  end
  
  hash
end

p hashmaker(flintstones) 

# LS solution using .each_with_index

flintstones_hash = Hash.new
flintstones.each_with_index { |name, index| 
  flintstones_hash[name] = index 
} 

p flintstones_hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

flintstones.each_with_index { |element, index| 
  p index if element.start_with?("Be") 
} 

p flintstones.map! { |name| name[0..2] } 

statement = "The Flintstones Rock" 
letter_hash = Hash.new(0)

statement.chars.each { |letter| 
  letter_hash[letter] += 1 
}

p letter_hash

words = "the flintstones rock" 
title = words.split.each { |word|
  word.capitalize!
} 

p title.join(" ")

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
} 

p munsters.values

case "age_group"
when "age" < 18 then "child"
when "age".include?(18..64) then "adult"
when "age" > 95 then "senior"
end

