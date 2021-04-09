def word_lengths(string)
  string.split.map do |word|
    "#{word} #{word.length}"
  end 
end 

p word_lengths("hello how are you today")