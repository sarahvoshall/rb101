def word_swap(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  word_array = string.split(' ').map do |word|
    word_swap(word)
  end
  word_array.join(' ')
end

p swap('alpha and omega')
p swap('a')