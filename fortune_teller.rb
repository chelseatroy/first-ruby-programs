

puts "Choose a number between 0 and 99, and I'll tell your fortune!"

verbs = ["gain", "win", "earn", "collect", "make", "buy", "sell", "lose", "steal", "destroy"]
nouns = ["car", "house", "shirt", "bottle of wine", "spoon", "backpack", "dollar", "coffee", "mansion", "chair"]

number = gets.chomp.to_s.split('')

if number.length == 1
	number = ["0", number[0]]
end

puts "You will #{verbs[rand(number[0].to_i)]} a #{nouns[rand(number[1].to_i)]}."


