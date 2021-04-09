words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anagrams(array)
  anagram = Hash.new([])
  
  array.each do |word| 
    sorted_word = word.chars.sort.join
    anagram[sorted_word] += [word]
  end
  
  anagram.each_value { |value| p value }
end 


p anagrams(words)