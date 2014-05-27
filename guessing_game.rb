puts "Welcome to the number guessing game!"
puts "Guess a number between 1 and 100"

@answer = rand(100)
@lives = 7


7.times do 
	@guess = gets.chomp.to_i

	if @guess == @answer
		puts "You win!"
		exit
	else 
		@lives = @lives - 1

		if @guess > @answer
			puts "Too high."
		else
			puts "Too low."
		end

		puts "You have " + @lives.to_s + " guesses remaining. Guess again!"
	end
end

puts "You lose!"
