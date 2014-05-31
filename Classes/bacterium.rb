class Bacterium

	def reproduce
		number_two = Bacterium.new
		puts "Once there was one; now there are two!"
	end

	def apoptosis
		puts "Goodbye, cruel world!"
	end

end

heliobacter = Bacterium.new