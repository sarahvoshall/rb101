require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + #rows
   							[[1, 4, 7], [2, 5, 8], [3, 6, 9]] + #columns
								[[1, 5, 9], [3, 5, 7]]							#diagonals

PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
INITIAL_MARKER = " "

def prompt(message)
	puts "=> #{message}"
end  

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
	prompt "You're an #{PLAYER_MARKER} and computer is an #{COMPUTER_MARKER}."
	puts ""
	puts "     |     |     "
	puts "     |     |     "
	puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
	puts "     |     |     "
	puts "     |     |     "
	puts "-----+-----+-----"
	puts "     |     |     "
	puts "     |     |     "
	puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
	puts "     |     |     "
	puts "     |     |     "
	puts "-----+-----+-----"
	puts "     |     |     "
	puts "     |     |     "
	puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
	puts "     |     |     "
	puts "     |     |     "
	puts ""
end 
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
	new_board = {}
	(1..9).each { |num| new_board[num] = INITIAL_MARKER }
	new_board
end 

def empty_squares(brd)
	brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, punct = ', ', conj = 'or ')
	string = String.new
	array.each do |num|
		if num != array.last
			string += num.to_s + punct
		elsif array.size == 1
			string += num.to_s
		else
			string += conj + num.to_s
		end
	end
  string 
end 

def player_places_piece!(brd)
	square = ''
	loop do 
		prompt "Choose a square (#{joinor(empty_squares(brd))}):" 
		square = gets.chomp.to_i
		break if empty_squares(brd).include?(square)
		prompt "Sorry. That's not a valid choice."
	end 
	brd[square] = PLAYER_MARKER
end 

def find_at_risk_square(line, board, marker)
	if board.values_at(*line).count(marker) == 2
		board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
	else 
		nil
	end 
end 

def computer_places_piece!(brd)
	square = nil
	WINNING_LINES.each do |line| 
		square = find_at_risk_square(line, brd, COMPUTER_MARKER)
		break if square
	end 
	
	if !square 
		WINNING_LINES.each do |line| 
			square = find_at_risk_square(line, brd, PLAYER_MARKER)
			break if square
		end 
	end 

	if !square 
		empty_squares(brd).include?(5) ? square = 5 : nil
	end 

	if !square 
		square = empty_squares(brd).sample
	end

	brd[square] = COMPUTER_MARKER
end

def alternate_player(player)
	if player == 'Computer'
		player = 'Player'
	elsif player == 'Player'
		player = 'Computer'
	end
end 

def place_piece!(brd, player)
	case player
	when "Player"
		player_places_piece!(brd)
	when "Computer"
		computer_places_piece!(brd)
	end
end 

def board_full?(brd)
	empty_squares(brd).empty?
end 
	 
def someone_won?(brd)
	!!detect_winner(brd)
end

def detect_winner(brd)
	WINNING_LINES.each do |line|
		if brd.values_at(*line).count(PLAYER_MARKER) == 3
			return 'Player'
		elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
			return 'Computer'
		end
	end
	nil
end 


loop do 
	player_win = 0
	computer_win = 0 

	loop do 
		board = initialize_board

		prompt "Do you want to go first? (y / n)"
		user_response = gets.chomp

		if user_response.downcase.start_with?('y')
			current_player = 'Player'
		elsif user_response.downcase.start_with?('n')
			prompt "Do you want the computer to choose who goes first? (y / n)"
			user_response2 = gets.chomp
			if user_response2.downcase.start_with?('n') 
				current_player = 'Computer'
			else 
				first_turn = [PLAYER_MARKER, COMPUTER_MARKER].sample
				if first_turn == COMPUTER_MARKER
					current_player = 'Computer'
				else 
					nil
				end
			end
		end

		loop do
			display_board(board)
			place_piece!(board, current_player)
			current_player = alternate_player(current_player)
			break if someone_won?(board) || board_full?(board)
		end

		display_board(board)

		if someone_won?(board)
			prompt "#{detect_winner(board)} won!"
		else 
			prompt "It's a tie!"
		end

		case detect_winner(board) 
		when 'Player' 
			player_win += 1
		when 'Computer'
			computer_win += 1
		end 

		prompt "Player: #{player_win} Computer: #{computer_win}" 

		break if computer_win == 5 || player_win == 5
	end 

	prompt "Do you want to play again? (y / n)"
	answer = gets.chomp
	break unless answer.downcase.start_with?('y')
end 

prompt "Thanks for playing Tic Tac Toe!"
