def ordinalize(century_num)
  cent = century_num.to_s
  if cent.end_with?("11")
    cent + "th"
  elsif cent.end_with?("12")
    cent + "th"
  elsif cent.end_with?("13")
    cent + "th"
  elsif cent.end_with?("1")
    cent + "st"
  elsif cent.end_with?("2")
    cent + "nd"
  elsif cent.end_with?("3")
    cent + "rd"
  else 
    cent + "th"
  end
end

def century(year)
  cent = year / 100 + 1
  ordinalize(cent)
end

p century(2000) 
p century(2001) 
p century(1965)
p century(256)
p century(5) 
p century(10103) 
p century(1052)
p century(11201) 
