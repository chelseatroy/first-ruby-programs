@blanks = ["noun", "verb", "noun", "adjective", "verb"]
@story = "Once upon a time there was a #{@blanks[0]}. He would #{@blanks[1]} to the store each and every day to buy a #{@blanks[2]}, which he gave to his #{@blanks[3]} mother each #{@blanks[4]}"

puts "Welcome to Madlibs!"

x = 0
@length = @blanks.length - 1

while x <= @length
	puts "Please enter a #{@blanks[x]}:"
	@blanks[x] = gets.chomp
	x += 1
	puts @blanks.length
end

puts @story
