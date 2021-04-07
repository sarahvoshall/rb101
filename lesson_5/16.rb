CHARS = %w(1 2 3 4 5 6 7 8 9 0 a b c d e f)

# 8-4-4-4-12 

def uuid
  array = Array.new
  array << var1 = CHARS.sample(8).join
  array << var2 = CHARS.sample(4).join
  array << var3 = CHARS.sample(4).join
  array << var4 = CHARS.sample(4).join
  array << var5 = CHARS.sample(12).join
  array.join('-')
end 

p uuid

# after reviewing LS solution, and recognizing that my original solution is too redundant 

def uuid_generator
  uuid = []
  
  segments = [8, 4, 4, 4, 12]
  segments.each do |num|
    uuid << CHARS.sample(num).join
  end 
  
  p uuid.join('-')
end 


uuid_generator
