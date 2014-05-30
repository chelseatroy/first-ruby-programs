puts "What's your first name?"
x = gets.chomp.length

puts "What's your middle name?"
y = gets.chomp.length

puts "What's your last name?"
z = gets.chomp.length

puts "You have " + (x + y + z).to_s + " letters in your name."