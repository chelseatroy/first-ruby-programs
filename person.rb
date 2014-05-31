class Person

	def set_age(a)
		@age = a
	end

	def set_occupation(o)
		@occupation = o
	end

	def set_mood(m)
		@mood = m
	end

	def age
		puts @age
	end

	def occupation
		puts @occupation
	end

	def mood
		puts @mood
	end

	def info
		puts "Age: " + @age.to_s
		puts "Occupation: " + @occupation.to_s
		puts "Mood: " + @mood.to_s
	end

end