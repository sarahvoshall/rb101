def ascii_value(string) 
  array = string.split("")
  new = array.map { |element| element.ord }
  new.inject(:+)
end

p ascii_value("hello")
p ascii_value('Launch School')