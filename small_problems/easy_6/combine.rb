def combine(ary1, ary2)
  ary1 << ary2
  ary1.flatten.uniq
end

# LS solution 
# ary1 | ary2

p combine([1, 3, 5], [3, 6, 9])