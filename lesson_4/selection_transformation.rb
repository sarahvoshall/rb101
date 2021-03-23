produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  selected_fruit = Hash.new
  counter = 0
  foods = hash.keys
  
  loop do 
    break if counter == foods.size 
    
    current_food = foods[counter]
    current_food_type = hash[current_food]
    
    if current_food_type == "Fruit"
      selected_fruit[current_food] = current_food_type
    end
    
    counter += 1
  end
  
  selected_fruit
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def doubled_nums!(array)
  counter = 0 
  loop do
    break if counter == array.size
    
    array[counter] *= 2
    
    counter += 1
  end 
  
  array
end 

def multiply_nums!(array, multiplier=1)
  counter = 0 
  loop do
    break if counter == array.size
    
    array[counter] *= multiplier
    
    counter += 1
  end 
  
  array
end 

p multiply_nums!([1, 2, 3, 4], 3)
p multiply_nums!([1, 2, 3, 4])


p doubled_nums!([1, 2, 34, 4])

def double_odd_index_nums(array)
  new_array = Array.new
  counter = 0
  
  loop do 
    break if counter == array.size 
    
    current_num = array[counter]
    current_num *= 2 if counter.odd?
    
    new_array << current_num
    
    counter += 1 
  end
  
  new_array
end

p double_odd_index_nums([1, 2, 3, 5, 67])