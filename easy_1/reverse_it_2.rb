def reversals(sentence)
    words = Array.new
    
    sentence.split.map do |word|
        word.reverse! if word.size > 4 
        words << word
    end 
    
    words.join(" ")
end 

p reversals("sarah is great at ruby")
p reversals("Walk around the block")