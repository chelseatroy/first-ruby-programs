puts "Enter some words! Type 'done' when you've entered all your words."
words = []
hash = {}

while gets.chomp != "done"
	x = gets.chomp
	words << x
end

words.each do |word|
 	if !hash.include?(word)
 		hash[word] = 1
 	else
 		hash[word] += 1
 	end
end

puts "Your most frequent word is #{hash.sort_by{|a,b| b}.reverse[0][0]}"
puts "and it is mentioned  #{hash.sort_by{|a,b| b}.reverse[0][1]} times!"
