def grade_book(num1, num2, num3)
  score = (num1 + num2 + num3) / 3
  
  case score 
  when 90..100  then 'A'
  when 80..90   then 'B'
  when 70..80   then 'C'
  when 60..70   then 'D'
  else               'F'
  end 

end 

p grade_book(90, 98, 99)
p grade_book(50, 50, 95)