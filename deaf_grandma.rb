def talk_to_grandma
	puts "Say something to Grandma."
	@x = gets.chomp
end

def grandma_respond
	if @x == @x.upcase && !@x.start_with?("BYE")
		puts "NO, NOT SINCE " + ((rand(21) + 1930).to_s) + "!" 
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end

def run_deaf_grandma
	while @x != "BYE BYE BYE"
		grandma_respond
		talk_to_grandma
	end
end

talk_to_grandma
run_deaf_grandma