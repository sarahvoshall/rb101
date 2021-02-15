vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
    data = Hash.new
    
    array.uniq.each do |x|
        data[x] = array.count(x)
    end 
    
    data.each do |key, value|
        puts "#{key} => #{value}"
    end 
end 
    
p count_occurrences(vehicles)