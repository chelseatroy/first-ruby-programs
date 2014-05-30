@num_bottles = 99

def print_lyrics
	puts @num_bottles.to_s + " bottles of beer on the wall!"
	puts @num_bottles.to_s + " bottles of beer!"
	@num_bottles = @num_bottles - 1 
	puts "if one of those bottles should happen to fall"
	puts "there'd be " + @num_bottles.to_s + " bottles of beer on the wall!"
end

def organize_the_song
	while @num_bottles >= 1
		print_lyrics
	end
end

organize_the_song