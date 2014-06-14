puts "Welcome to the menu! You can choose the chicken, the beef, or the lentils."
puts "Which would you like? I'll tell you the price. "

@menu = {"beef" => "$14", "chicken" => "$12", "lentils" => "$10"}


def check_entry
	food = gets.chomp.downcase

	if @menu.include?(food)
		puts @menu[food]
	else
		puts "Oh! That's not an option. Please choose chicken, beef, or lentils."
		check_entry
	end
end

check_entry