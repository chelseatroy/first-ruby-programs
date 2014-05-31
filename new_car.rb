class NewCar

	def initialize
		@car = []
		add_engine
		add_transmission
		add_wheels
		add_horn
		puts @car.inspect
	end

	def add_engine
		@car.push("Engine")
	end

	def add_transmission
		@car.push("Transmission")
	end

	def add_wheels
		@car.push("Wheels")
	end

	def add_horn
		@car.push("Horn")
	end

end

c = NewCar.new