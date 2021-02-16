def average(array)
    sum = String.new.to_i 
    
    array.each do |element| 
        sum += element 
    end 
    
    sum / array.size
end

p average([1, 4, 5, 6, 8])
p average([23, 45, 56, 78])
p average([9, 47, 23, 95, 16, 52])
