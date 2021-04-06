hsh = { first: ['the', 'quick'], 
        second: ['brown', 'fox'], 
        third: ['jumped'], 
        fourth: ['over', 'the', 'lazy', 'dog']
}

vowels = []

hsh.each do |key, value| 
  value.each do |word|
    letters = word.chars
    letters.each do |letter|
      if letter.match(/[aeiou]/)
        vowels << letter
      end
    end
  end
end

p vowels