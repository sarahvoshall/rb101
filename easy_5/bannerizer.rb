def bannerizer(string)
  length = string.size
  print"+"
  length.times do print "-" end
  2.times do print "-" end
  print "+"
  puts ""
  print "|"
  length.times do print " " end
  2.times do print " " end 
  print "|"
  puts ""
  print "|"
  print " "
  print string
  print " "
  print "|"
  puts ""
  print "|"
  length.times do print " " end
  2.times do print " " end 
  print "|"
  puts ""
  print"+"
  length.times do print "-" end
  2.times do print "-" end
  print "+"
  puts ""
end

# solution from LS

def bannerizer_2(string)
  horizontal_rule = "+#{'-' * (string.size + 2)}+"
  empty_line = "|#{' ' * (string.size + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_rule
end 

bannerizer_2(" r + s ")
  