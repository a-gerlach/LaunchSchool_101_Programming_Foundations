WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # row
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # Diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(ar, join_par=", ", last_par="or")
  ar.insert(-2, "#{last_par}")
  ar_str = ar.join(join_par)
  ar_str["#{last_par}#{join_par}"] = "#{last_par} "
  ar_str
end

board = initialize_board
puts empty_squares(board)
