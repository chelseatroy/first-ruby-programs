puts "What is the dividend?"

dividend = gets.chomp.to_i

puts "What is the divisor?"

divisor = gets.chomp.to_i

puts "The quotient is " + (dividend/divisor).to_s + " and the remainder is " + (dividend%divisor).to_s + (".")