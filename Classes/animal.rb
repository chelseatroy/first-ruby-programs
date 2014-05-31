class Animal

	def look_for_predators
		puts "Is that a lion over there?"
	end

	def eat_plant
		p = Plant.new
		puts "Munch munch munch"
		p.get_eaten
	end

end

giraffe = Animal.new