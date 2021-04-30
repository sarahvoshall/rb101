DIGITS = {  'zero' => '0',
            'one' => '1',
            'two' => '2',
            'three' => '3',
            'four' => '4',
            'five' => '5',
            'six' => '6',
            'seven' => '7',
            'eight' => '8',
            'nine' => '9'
}

def word_to_digit(string)
  new_string = string.split.map do |word|
    if DIGITS.has_key?(word)
      word = DIGITS[word]
    else 
      word
    end
  end 
  new_string.join(' ')
end 

# after reviewing LS solution and deciding that I should probably be 
# more comfortable with using .gsub... 

def word_to_digit2(string)
  DIGITS.keys.each do |word|
    string.gsub!(word, DIGITS[word])
  end
  string
end 

p word_to_digit2('hello zero one two three')