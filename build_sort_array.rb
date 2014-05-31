
@array = []

puts "Type the items you would like to add to the array:"

while gets.chomp != ""
	@array.push(gets.chomp)
end

puts @array.sort