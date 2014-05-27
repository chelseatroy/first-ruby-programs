
@answers_correct = 0
@number_of_questions = 0

def ask_question(question, answer)
	@number_of_questions = @number_of_questions + 1
	puts question
	user_response = gets.chomp
	if answer.include?(user_response)
		@answers_correct = @answers_correct + 1
	end 
end

ask_question("How far is it from Earth to the Sun?", ["93 million miles", "1 astronomical unit"])
ask_question("How far is it from Earth to the Moon?",["250,000 miles","a quarter of a million miles"])
ask_question("How far is it from Earth to the Crab Nebula?",["5000 light years","5000 lightyears"])

puts "You got " + @answers_correct.to_s + "/" + @number_of_questions.to_s