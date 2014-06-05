class RomanNumeral

	def initialize
		get_number
	end

	def get_number
		puts "Pick a number, 1-3000"
		number = gets.chomp.to_i
		check_num number
	end

	def check_num number
		if number>0 && number<10000
			roman_numeral number
		else
			get_number
		end
	end

	def roman_numeral number
		@ones = number%5
		@fives = (((number - @ones)%10)/5)
		@tens = (((number - @fives - @ones)%50)/10)
		@fifties = (((number - @tens - @fives - @ones)%100)/50)
		@hundreds = (((number - @fifties - @tens - @fives - @ones)%500)/100)
		@five_hundreds = (((number - @hundreds - @fifties - @tens - @fives - @ones)%1000)/500)
		@thousands = ((number - @five_hundreds - @hundreds - @fifties - @tens - @fives - @ones)/1000)
		print_roman_numeral
	end

	def print_roman_numeral
		@printout = ("M"*@thousands) + ("D"*@five_hundreds) + ("C"*@hundreds) + ("L"*@fifties) + ("X"*@tens)
		if @ones == 4 && @fives == 0
			@printout += "IV"
		elsif @ones == 4 && @fives == 1
			@printout += "IX"
		else
			@printout += ("V"*@fives) + ("I"*@ones)
		end
		puts @printout 
	end

end

r = RomanNumeral.new
