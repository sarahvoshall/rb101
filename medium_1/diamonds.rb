def row(num, space)
	puts ('*' * num).center(space)
end

def diamond(odd_num)
	1.upto(odd_num) do |num|
		if num.odd?
			row(num, odd_num)
		end
	end
	
	(odd_num - 2).downto(1) do |num|
		if num.odd?
			row(num, odd_num)
		end 
	end 
end 

diamond(5)
