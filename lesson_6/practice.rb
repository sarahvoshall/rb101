def joinor(array, punct = ', ', conj = 'or ')
	string = String.new
	array.each do |element|
		if element != array.last
			string += element.to_s + punct
		else 
			string += conj + element.to_s
        end
    end
    string
end 

p joinor([1, 2, 3])