puts "This is the four word selector."
puts "First, please enter four words. Hit enter after each word."

@words = []

4.times do
	puts "Enter Word:"
	@words << gets.chomp
end

puts "OK. Now, enter the number of the word you would like to see again."
puts "This will be a number between 1 and 4."

x = gets.chomp.to_i

if @words.include?(@words[x-1]) 
	puts @words[x-1]
else
	puts "That's not a number between 1 and 4."
end
