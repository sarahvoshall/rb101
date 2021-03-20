def leap_years?(year)
  if year <= 1752
    year % 4 == 0
  else 
    if year % 100 == 0
      year % 400 == 0 ? true : false
    elsif year % 100 != 0
      year % 4 == 0 ? true : false
    end
  end
end  

p leap_years?(1000)
p leap_years?(2000)
p leap_years?(2020)
p leap_years?(2016) 
p leap_years?(2015)
p leap_years?(2100)
p leap_years?(1752)
p leap_years?(1700) 
