ALPHABET_LETTERS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  alphabetized_words = array.map do |number|
    ALPHABET_LETTERS[number]
  end
  alphabetized_numbers = alphabetized_words.sort.map do |word|
    ALPHABET_LETTERS.index(word)
  end
  alphabetized_numbers
end

p alphabetic_number_sort((0..19).to_a) 