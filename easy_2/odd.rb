array = (1..99).to_a

array.select { |element| p element if element.odd? }