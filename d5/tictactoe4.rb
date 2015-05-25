class Board
	def initialize
		@rows = { 0 => " ", 1 => " " ,2=> " ", 3=> " ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" " }
	end
;
	def get_input(player_number)
		player_number == 1 ? player_letter = "X" : player_letter = "O"
		puts "Player #{player_number} : "
		spot_number = gets.chomp.to_i
		if (spot_number <= 8 && spot_number >=0 &&  @rows[spot_number] == " ")
			@rows[spot_number] = player_letter
		elsif (@rows[spot_number] != " ")
			puts "Error: Square already taken"
			get_input(player_number)
		else
			puts "Error: Invalid Input"
			get_input(player_number)
		end
	end


	def winner
		if(@rows[0] == @rows[1] && @rows[0] == @rows[2] && @rows[0] != " ")
			@rows[0]
		elsif (@rows[3] == @rows[4] && @rows[3] == @rows[5] && @rows[3] != " ")
			@rows[ 3]
		elsif (@rows[6] == @rows[7] && @rows[6] == @rows[8] && @rows[6] != " ")
			@rows[ 6]
		elsif (@rows[0] == @rows[3] && @rows[0] == @rows[6] && @rows[0] != " ")
			@rows[ 6]
		elsif (@rows[1] == @rows[4] && @rows[1] == @rows[7] && @rows[1] != " ")
			@rows[ 1]
		elsif (@rows[2] == @rows[5] && @rows[2] == @rows[8] && @rows[2] != " ")
			@rows[ 2]
		elsif (@rows[0] == @rows[4] && @rows[0] == @rows[8] && @rows[0] != " ")
			@rows[ 0]
		elsif (@rows[2] == @rows[4] && @rows[2] == @rows[6] && @rows[2] != " ")
			@rows[ 6]
		else
			nil
		end	
	end

	def print
		puts " #{@rows[0]} | #{@rows[1]} | #{@rows[2]}"
		puts "___+___+___"
		puts " #{@rows[3]} | #{@rows[4]} | #{@rows[5]}"
		puts "___+___+___"
		puts " #{@rows[6]} | #{@rows[7]} | #{@rows[8]}"
	end
end


board = Board.new
run = true
player = 1 
num_moves = 0

while(run)
	board.get_input(player)
	
	board.print

	winner = board.winner()
	if(winner == "X")
		puts "Congrats, player 1 won!"
		run = false
	elsif (winner == "O")
		puts "Congrats, player 2 won!"
		run = false
	end

	player == 1 ? player = 2 : player = 1

	num_moves += 1

	if(num_moves) == 9
		puts "Cats game!"
		run = false
	end
end

