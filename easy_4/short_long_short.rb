def short_long_short(str1, str2)
  if str1.size > str2.size
    str2 + str1 + str2
  else 
    str1 + str2 + str1
  end 
end 

p short_long_short("abs", "defgh")
p short_long_short("123456", "34")