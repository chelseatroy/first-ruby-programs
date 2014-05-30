

def get_years
	puts "What's your starting year?"
	@current_year = gets.chomp.to_i
	puts "What's your ending year?" 
	@y = gets.chomp.to_i
	check_nums(@current_year, @y)
end

def check_nums(num1, num2)
	if num2 < num1
		puts "We can only go forward in time, not backwards."
		puts "Please make sure your ending year is AFTER your starting year."
		get_years
	elsif num1==0 || num2 ==0
		puts "Sorry, the year zero didn't happen. Start with year 1."
		get_years
	end
end

def go_through_the_years
	puts "The leap years from " + @current_year.to_s + " to " + @y.to_s + " are the following:"
	while @current_year <= @y
		is_leap_year?(@current_year)
		@current_year = @current_year + 1
	end
end

def is_leap_year?(num)
	if (num%100 != 0 && num%4 == 0) || (num%400 == 0)
		print_leap_year(num)
	end
end

def print_leap_year(num)
	puts num.to_s + ", "
end


get_years
go_through_the_years
