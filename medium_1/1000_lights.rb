def toggle(value)
	value == 'on' ? value = 'off' : value = 'on'
end

def light_switch(n)
	lights = Hash.new
	(1..n).each do |num|
		lights[num] = 'off'
	end 
	
	iteration = 1

	until iteration > n
		lights.each do |k, v| 
			if k % iteration == 0
				lights[k] = toggle(v)
			end
		end 
		iteration += 1
	end 

	lights.select { |key, value| value == 'on' } .keys
end 

p light_switch(1000)