require 'pp'

puts "Enter 10 words!"
words = []
hash = {}

10.times do 
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

pp hash
