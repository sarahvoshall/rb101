def xor?(arg1, arg2)
  (arg1 == true && arg2 == false ? true : false) ||
  (arg1 == false && arg2 == true ? true : false) 
end

# solution from exercise 

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if arg2 && !arg1
  false 
end

p xor?(5.even?, 4.even?) 
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 