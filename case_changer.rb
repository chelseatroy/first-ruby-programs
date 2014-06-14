puts "Please enter six words."

@words = []

@case = 1

def gets_words
	6.times do 
		puts "Enter word:"
		@words << gets.chomp
	end
end

def puts_words
	@words.each do |word|
		if @case == 1
			puts word.upcase
			@case = 0
		else
			puts word.downcase
			@case = 1
		end
end

gets_words
puts_words