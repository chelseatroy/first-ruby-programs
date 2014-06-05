def ask question
	puts question
	x = gets.chomp.downcase

	if x == "yes"
		true
	elsif x == "no"
		false
	else
		puts 'Please answer yes or no.'
		ask question
	end
end

m = ask 'Do you live in the United States?'
puts m
