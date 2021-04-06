def sorter(array)
  array.sort do |a, d|
    d.to_i <=> a.to_i
  end
end 

p sorter(['10', '11', '9', '7', '8'])