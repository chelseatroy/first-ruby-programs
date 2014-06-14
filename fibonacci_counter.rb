first_number = 0
second_number = 1

coin = "heads"

puts first_number
puts second_number

while (first_number + second_number)<=100000 do

	puts first_number + second_number

	if coin == "heads"
		first_number = first_number + second_number
		coin = "tails"
	else
		second_number = first_number + second_number
		coin = "heads"
	end

end





		