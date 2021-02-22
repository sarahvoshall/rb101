array = [2, 3, 5, 13, 5, 67]

def selective(arr)
    new_array = Array.new 
    
    arr.each do |element|
        if element.each_index.even? 
            new_array << element 
        else 
            next
        end 
    end 
end 

p selective()