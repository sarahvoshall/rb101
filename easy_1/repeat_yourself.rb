def repeat(string, num)
    while num > 0 
        puts string
        num -= 1 
    end 
end 

def repeat_2(string, num)
    num.times do 
        puts string 
    end 
end 

repeat("ciao", 3)

repeat_2("hola", 4)