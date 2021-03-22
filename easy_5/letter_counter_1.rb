def letter_counter(string)
  hash = Hash.new(0)
  string.split.select do |word|
    hash[word.size] += 1
  end 
  hash
end

p letter_counter('Hey diddle diddle, the cat and the fiddle')