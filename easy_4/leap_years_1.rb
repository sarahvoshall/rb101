def leap_years?(year)
  if year % 100 == 0
    year % 400 == 0 ? true : false
  elsif year % 100 != 0
    year % 4 == 0 ? true : false
  end
end  

p leap_years?(1000)
p leap_years?(2000)
p leap_years?(2020)
