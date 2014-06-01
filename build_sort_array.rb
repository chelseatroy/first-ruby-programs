
@array = []

puts "Type the items you would like to add to the array:"

def get_words
	@x = gets.chomp
end

def put_words_in_list
	while @x != ""
		@array.push(@x)
		get_words
	end
end

get_words
put_words_in_list

puts @array.sort
