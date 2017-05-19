require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # row
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # Diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
counter_player = []
counter_computer = []


def winning_counter(brd, counter_p, counter_c)
  if detect_winner(brd) == 'Player'
    counter_p << "1"
    
    if counter_p.length == 10
      prompt "You have won five games in a row and the game is over!"
      return 'Player'
    end
    # exit if counter_p.length == 2
  elsif detect_winner(brd) == 'Computer'
    counter_c << "1"
    
    if counter_c.length == 10
      prompt "The Computer has won five games in a row and the game is over!"
      return 'Computer'
    end
  end  
end


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
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  # we have to adjust this method
  # we must tell the computer that he should choose a square when two are in a row
  # we can start with the easiest case of this
  # this if clause does not work after the first time, because brd 1 is always the player marker so this only works the first time 
  square = empty_squares(brd).sample  
  if (brd[1] == PLAYER_MARKER) && (brd[2] == PLAYER_MARKER)
    square = 3
    if !empty_squares(brd).include?(3)        
      square = empty_squares(brd).sample
    end      
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

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)
  winning_counter(board, counter_player, counter_computer)
  break if winning_counter(board, counter_player, counter_computer) == 'Player'
  # break if winning_counter(board, counter_player, counter_computer) == 'Computer' 

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
