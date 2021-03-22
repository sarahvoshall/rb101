def cleanup(string)
  string.gsub(/[[:punct:]]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")