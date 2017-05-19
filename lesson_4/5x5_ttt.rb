# Build a 5x5 ttt game here!
# a few things we have to do (top of my head)
# increase the board, done
# change winning lines, done
# change which sqaures we can select, done
# change the first space the computer chooses, done
# change the board full condition, done
# Things we dont have to change
# alternate player, done
# player places piece, done
# think about adding a newline in joinor method

require 'pry'

WINNING_LINES = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20], [21, 22, 23, 24, 25]] + # row
                [[1, 6, 11, 16, 21], [2, 7, 12, 17, 22], [3, 8, 13, 18, 23], [4, 9, 14, 19, 24], [5, 10, 15, 20, 25]] + # cols
                [[1, 7, 13, 19, 25], [5, 9, 13, 17, 21]]              # Diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength
def display_board(brd)
  system 'cls'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  |  #{brd[4]}  |  #{brd[5]}"
  puts "     |     |     |     |"
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |"
  puts "  #{brd[6]}  |  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  |  #{brd[10]}"
  puts "     |     |     |     |"
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |"
  puts "  #{brd[11]}  |  #{brd[12]}  |  #{brd[13]}  |  #{brd[14]}  |  #{brd[15]}"
  puts "     |     |     |     |"
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |"
  puts "  #{brd[16]}  |  #{brd[17]}  |  #{brd[18]}  |  #{brd[19]}  |  #{brd[20]}"
  puts "     |     |     |     |"
  puts "-----+-----+-----+-----+-----"
  puts "     |     |     |     |"
  puts "  #{brd[21]}  |  #{brd[22]}  |  #{brd[23]}  |  #{brd[24]}  |  #{brd[25]}"
  puts "     |     |     |     |"
  puts""
end
# rubocop:enable Metrics/MethodLength

# 5x5: this method can stay the same
# idea, maybe insert new line element to make the list of available sqaures more readable?????
def joinor(ar, join_par=", ", last_par="or")
  if ar.size > 1
    ar.insert(-2, "#{last_par}")
    ar_str = ar.join(join_par)
    ar_str["#{last_par}#{join_par}"] = "#{last_par} "
    ar_str
  elsif ar.size <= 1    
    ar_str = ar.join(join_par) + " is the only square left to choose."     
  end
end

def initialize_board
  new_board = {}
  (1..25).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

# changed 2 to 4 on the count(marker) for at risk lines
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 4
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

  if empty_squares(brd).include?(13)
    square = 13 #  change this to 13, as 13 is now the center sqaure, and the best one to pick in the beginning    
  end

  # If we dont find something with the method above we again assign a random square. 
  if !square
    square = empty_squares(brd).sample
  end
 
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd) # check is the board is empty
  empty_squares(brd).empty?
end

def someone_won?(brd) # checks if someone one by getting a boolean value from the detect_winner Method
  !!detect_winner(brd)
end


# this method ask us who should go first.
# We can enter 'p' for player or 'c' for computer. These value then get returned. 
# If an incorrect value is returned we get a promp to enter a correct value.
def goes_first(brd) 
  prompt "Who shoud go first? The player or the computer?"
  answer = gets.chomp
  if answer.start_with?('p')
    return 'player'    
  elsif answer.start_with?('c')
    return 'computer'          
  else 
    prompt "Please enter a correct value."      
  end   
end


# this method determins the winner by checking the winning lines.
# it returns a winner as a string
def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER &&
       brd[line[3]] == PLAYER_MARKER &&
       brd[line[4]] == PLAYER_MARKER
      return 'Player'
    elsif  brd[line[0]] == COMPUTER_MARKER &&
           brd[line[1]] == COMPUTER_MARKER &&
           brd[line[2]] == COMPUTER_MARKER &&
           brd[line[3]] == COMPUTER_MARKER &&
           brd[line[4]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

win_array = []
# this method appends 'p' or 'c' or 't' to an array. 
# When this array hit five markers of either value we get a message who has one five games 
# or if there was a tie. 
def determine_total_winner(win_ar, brd)
  t = detect_winner(brd)
  if t == 'Player'
    win_ar << 'p'
  elsif t == 'Computer'
    win_ar << 'c'
  else
    win_ar << 't'            
  end

  if win_ar.count('p') == 5
    prompt "The Player has won five games in total and the game is over."
    exit
  elsif win_ar.count('c') == 5
    prompt "The computer has won two games in total and the game is over."
    exit
  elsif win_ar.count('t') == 5
    prompt "This is the fifth tie and the game is over."
    exit  
  end
end

# this method activates the places_piece methods
def place_piece!(brd, current_player)  
  if current_player == 'player'
    player_places_piece!(brd)
  elsif current_player == 'computer'
    computer_places_piece!(brd)  
  end  
end

# this method alternates the players
def alternate_player(current_player)
  if current_player == 'player'
    'computer'
  elsif current_player == 'computer'
    'player'
  end  
end

current_player = ''
prompt "The first player to five wins!"

loop do
  board = initialize_board # we initialize the bord

  loop do
    current_player = goes_first(board) # we have a loop here to only break when the correct values have been entered
    break if current_player == 'player' || current_player == 'computer' # the correct values
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
    prompt "Its a tie"
  end

  determine_total_winner(win_array, board)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing. Good bye!"
