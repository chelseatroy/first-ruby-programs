puts "Enter a word to be scrambled!"

x = gets.chomp

puts x.split("").shuffle.to_s
