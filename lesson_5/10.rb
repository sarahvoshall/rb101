array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = array.map do |hash|
  new_hash = Hash.new
  hash.each do |key, value| 
    new_hash[key] = value + 1
  end
  new_hash
end 

p array
p new_arr