class Person

	attr_reader :age, :occupation, :mood

	def initialize(age, occupation, mood)
		@age = age
		@occupation = occupation
		@mood = mood
		puts "New person"
		info
	end

	def set_age(a)
		@age = a
	end

	def set_occupation(o)
		@occupation = o
	end

	def set_mood(m)
		@mood = m
	end

	def info
		puts "Age: " + @age.to_s
		puts "Occupation: " + @occupation.to_s
		puts "Mood: " + @mood.to_s
	end

end