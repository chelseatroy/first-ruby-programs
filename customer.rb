class Customer

	def initialize 
		@sales = 0
		@password = nil
	end

	def buy_something(thing)
		@sales += 1
		puts "Your new #{thing} is in the mail!"
	end

	def change_password(old_password, new_password)
		if @password == old_password
			@password = new_password
		end
	end

end