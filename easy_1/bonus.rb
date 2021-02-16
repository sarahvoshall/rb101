def bonus(amount, boolean)
    boolean == true ? ( amount / 2 ) : 0
end 

p bonus(200, true)
p bonus(400, false)