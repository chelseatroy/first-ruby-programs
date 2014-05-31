class Virus

	def reproduce
		number_two = Virus.new
		puts "Once there was one, and now there are two!"
	end 

	def is_living?
		puts "No, not exactly. Ask a biologist; they'll explain it."
	end

end

influenza = Virus.new