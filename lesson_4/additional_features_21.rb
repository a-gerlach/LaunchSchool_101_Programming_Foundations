SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

GOAL = 41
STAY = 38


def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GOAL
  end

  sum
end

def busted?(score)
  score > GOAL
end

def display_summary(dealer_cards, dealer_total, player_cards, player_total)
  puts "============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "============="  
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total)  

  if player_total > GOAL
    :player_busted
  elsif dealer_total > GOAL
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

# this method takes the scores of both players and plugs it into the detect_result method
# then it takes the result and adds a toked to an array
# if a player reaches two token, they get a message and the array is emptied and the game
# can start again
def winning_counter(dealer_total, player_total, player_counter, dealer_counter)
  result = detect_result(dealer_total, player_total)

  case result
  when :player
    player_counter << "win"
  when :dealer
    dealer_counter << "win"
  when :player_busted
    dealer_counter << "win"
  when :dealer_busted
    player_counter << "win"
  end

  if player_counter.length == 5
    prompt "You have won five games!"
    player_counter.delete("win")
    dealer_counter.delete("win")
  elsif dealer_counter.length == 5
    prompt "The dealer has won five games!"
    dealer_counter.delete("win")
    player_counter.delete("win")
  end
  prompt "The player winning counter is: #{player_counter} and dealer counter is #{dealer_counter}"  
end

def play_again?
  puts "----------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

player_counter = []
dealer_counter = []

loop do
  player_total = 0
  dealer_total = 0
  prompt "Welcome to Twenty-One"

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total += total(player_cards)
  dealer_total += total(dealer_cards)
  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end # the player loop where we can decide to hit or stay ends here

    if player_turn == 'h'
      player_cards << deck.pop      
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      player_total = total(player_cards)
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end # this loop ends where we set player_turn to nil

  # now we are back in the main play loop
  if busted?(player_total)
    
    display_summary(dealer_cards, dealer_total, player_cards, player_total)
    display_result(dealer_total, player_total)
    winning_counter(dealer_total, player_total, player_counter, dealer_counter)
    play_again? ? next : break # we are in the main play loop. If we insert a true boolean value we will trigger "next".
    # This means we will start the next iteration of this loop which will put us back at "Welcome to 21."
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do 
    break if busted?(dealer_total) || dealer_total >= STAY

    prompt "Dealer hits!"
    dealer_cards << deck.pop    
    dealer_total = total(dealer_cards)
    prompt "Dealer cards are now: #{dealer_cards}"
  end

  # back in the main game loop
  if busted?(dealer_total)
    # prompt "Dealer total is now: #{dealer_total}"
    
    display_summary(dealer_cards, dealer_total, player_cards, player_total)
    display_result(dealer_total, player_total)
    winning_counter(dealer_total, player_total, player_counter, dealer_counter)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  
  # both player and dealer stays - compare cards
  display_summary(dealer_cards, dealer_total, player_cards, player_total)
  winning_counter(dealer_total, player_total, player_counter, dealer_counter)
  # puts "============="
  # prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  # prompt "Player has #{player_cards}, for a total of: #{player_total}"
  # puts "============="

  display_result(dealer_total, player_total)

  # play_again? ? next : break # ask this qeustion in the forums
  # both soluitons work
  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"


