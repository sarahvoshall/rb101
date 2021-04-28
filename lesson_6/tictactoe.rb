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
		square = 5 
	end 

	if !square 
		square = empty_squares(brd).sample
	end

	brd[square] = COMPUTER_MARKER
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

		loop do 
			display_board(board)

			player_places_piece!(board)
			break if someone_won?(board) || board_full?(board)
			
			computer_places_piece!(board)
			break if someone_won?(board) || board_full?(board)
		end 

		display_board(board)

		if someone_won?(board)
			prompt "#{detect_winner(board)} won!"
		else 
			prompt "It's a tie!"
		end

		detect_winner(board) == 'Player' ? player_win += 1 : computer_win =+ 1
		prompt "Player: #{player_win} Computer: #{computer_win}" 

		break if computer_win == 5 || player_win == 5
	end 

	prompt "Do you want to play again? (y / n)"
	answer = gets.chomp
	break unless answer.downcase.start_with?('y')
end 

prompt "Thanks for playing Tic Tac Toe!"
