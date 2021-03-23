munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
} 

munsters.each { |name, details| 
  case details["age"]
  when 0..18 
    details["age_group"] = "kid"
  when 18..65 
    details["age_group"] = "adult"
  else 
    details["age_group"] = "senior"
  end
}

p munsters

# case "age_group"
# when "age" < 18 then "child"
# when "age".include?(18..64) then "adult"
# when "age" > 95 then "senior"
# end