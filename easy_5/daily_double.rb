def undoubler(string)
  new_string = Array.new
  string.split('').each do |letter| 
    new_string << letter unless new_string[-1] == letter
  end
  new_string.join
end

p undoubler("GGGGG")
p undoubler('ddaaiillyy ddoouubbllee')
