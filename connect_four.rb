class ConnectFour

	def initialize
		@board = [[" ", " ", " ", " ", " ", " ", " "],
				  [" ", " ", " ", " ", " ", " ", " "],
				  [" ", " ", " ", " ", " ", " ", " "],
				  [" ", " ", " ", " ", " ", " ", " "],
				  [" ", " ", " ", " ", " ", " ", " "],
				  [" ", " ", " ", " ", " ", " ", " "]]
		@ones_in_a_row = 0
		@twos_in_a_row = 0
		gameplay
	end

	def gameplay
		board
		@player = 1
		ask_for_token
	end

	def board
		@board.each do |row|
			puts row.inspect 
		end
	end

	def ask_for_token
		puts "Player #{@player}, please enter the column number you want to put your token in."
		get_token
	end

	def get_token
		column = gets.chomp.to_i-1
		check_range(column)
	end

	def check_range(int)
		if int >= 0 && int <= 6
			enter_token(int, 0)
		else
			puts int.to_s
			puts "Please enter a column between 1 and 7."
			get_token
		end
		
	end

	def enter_token(x, y)
		if @board[y][x] != " " 
			puts "Oh, that column is already full! Choose another row."
			get_token
		elsif y==5 || @board[y + 1][x] != " " 
			@board[y][x] = "#{@player}"
		else 
			y += 1
			enter_token(x, y)
		end
		board
		check_win(5,0)
		change_player
	end

	def change_player
		if @player == 1
			@player = 2
		else
			@player = 1
		end
		ask_for_token
	end

	def check_win(x, y)
		if !@board.include?(@board[y]) || @board[y][x] == " "
			if x == 6
				if y == 0 
					change_player
				else
					check_win(x, y-1)
				end
			else 
				check_win(x+1, y)
			end
		else 
			token = @board[y][x] 
			if @board[y][x]==@board[y-1][x]&&@board[y][x]==@board[y-2][x]&&@board[y][x]==@board[y-3][x]||
			   @board[y][x]==@board[y][x+1]&&@board[y][x]==@board[y][x+2]&&@board[y][x]==@board[y][x+3]||
			   @board[y][x]==@board[y-1][x+1]&&@board[y][x]==@board[y-2][x+2]&&@board[y][x]==@board[y-3][x+3]||
			   @board[y][x]==@board[y-1][x-1]&&@board[y][x]==@board[y-2][x-2]&&@board[y][x]==@board[y-3][x-3]
			    puts token + " wins the game!!!"
			else
				ask_for_token
			end
		end
	end
end

c = ConnectFour.new
		 