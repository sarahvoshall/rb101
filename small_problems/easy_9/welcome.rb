def welcome(array, hash)
  puts "Welcome #{array.join(' ')}. Nice to have a #{hash[:title]} #{hash[:occupation]} around here."
end 

welcome(['Sarah', 'A', 'Voshall'], {title: 'professional', occupation: 'sheboygan'})