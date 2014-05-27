puts "Welcome to the capital finder!" 
puts "Type in the name of one of the following states,"
puts "and this program will print its capital!"
puts "Tennessee, Louisiana, Alabama, Georgia, Florida"

@state_hash = {"Tennessee" => "Nashville", "Louisiana" => "Baton Rouge", "Alabama" => "Montgomery", "Georgia" => "Atlanta", "Florida" => "Tallahassee"}

def gets_state
	puts "Which state do you want to know?"
	state = gets.chomp
	prints_answer(state)
end

def prints_answer(s)
	if @state_hash.include?(s)
		puts @state_hash[s]
	else
		puts "I'm afraid we don't have that state in here. Try again."
		gets_state
	end
end

gets_state