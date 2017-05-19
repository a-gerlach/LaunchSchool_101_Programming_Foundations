require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # row
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # Diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
GOES_FIRST = ['player', 'computer', 'choose']


def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength
def display_board(brd)
  system 'cls'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts""
end
# rubocop:enable Metrics/MethodLength

def joinor(ar, join_par=", ", last_par="or")
  ar.insert(-2, "#{last_par}")
  ar_str = ar.join(join_par)
  ar_str["#{last_par}#{join_par}"] = "#{last_par} "
  ar_str
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    # prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end


def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)

  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense is second
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # then pick square five

  if empty_squares(brd).include?(5)
    square = 5       
  end

  # If we dont find something with the method above we again assign a random square. 
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

def goes_first(choice, brd)
  choice = 'choose'
  if choice == 'choose'
    prompt "Who shoud go first? The player or the computer?"
    answer = gets.chomp
    if answer.start_with?('p')
      choice = 'player'
    elsif answer.start_with?('c')
      choice = 'computer'
    else 
      prompt "Please enter a correct value."      
    end    
  end
  
  if choice == "player"
    player_places_piece!(brd)
    computer_places_piece!(brd)
  end
  if choice == 'computer'
    computer_places_piece!(brd)
    display_board(brd)
    player_places_piece!(brd)
  end  
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif  brd[line[0]] == COMPUTER_MARKER &&
           brd[line[1]] == COMPUTER_MARKER &&
           brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  display_board(board)
  goes_first(GOES_FIRST, board)

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
    prompt "Its a tie"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing. Good bye!"



