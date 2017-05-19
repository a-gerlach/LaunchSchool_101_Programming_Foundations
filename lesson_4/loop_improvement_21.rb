require "pry"

# we initialize the deck as an Array containing every card of every color.
DCK = ["2heart", "3heart", "4heart", "5heart", "6heart", "7heart", "8heart", "9heart", "10heart", "jackheart", "queenheart", "kingheart", "aceheart",
"2dia", "3dia", "4dia", "5dia", "6dia", "7dia", "8dia", "9dia", "10dia", "jackdia", "queendia", "kingdia", "acedia",
"2clu", "3clu", "4clu", "5clu", "6clu", "7clu", "8clu", "9clu", "10clu", "jackclu", "queenclu", "kingclu", "aceclu",
"2spa", "3spa", "4spa", "5spa", "6spa", "7spa", "8spa", "9spa", "10spa", "jackspa", "queenspa", "kingspa", "acespa" ]

# in this method we select one of the values in our array for the player
def draw_card(dck)
  dck[rand(0..51)]
end

# the drawn card is played in the "draw" variable
# and then if draw begin with 2 through 10 we will add than number.
# if it begins with anything else we return 10
def calculate_values!(cards, user)
  if cards.start_with?("2", "3", "4", "5", "6", "7", "8", "9")
    cards.byteslice(0).to_i
  elsif cards.start_with?("10", "j", "q", "k")
    10
  elsif cards.start_with?("a")
    11
  end
end

# we use this method to check for aces by inputting the score and the draw
# if the score is over 21 and the cards start with an "a", we subtract 10 points form the score
# this means that Aces will only give one point.
def check_for_aces(score, cards)
  if score > 21 && cards.start_with?("a")
    true
  end
end

# this is slight improvement on the first method
# it takes the score and if the conditions are met it subtracts 10 points.
# otherwise it returns the score.
def check_for_aces_v2(score, cards)
  if score > 21 && cards.start_with?("a")
    score -= 10
    score
  end
  score
end

# this method checks for by iterating throught the array if the score is over 21 and
# if the array includes an Ace, it is removed and 10 is returned.
# if nothing is found we return 0
# later we subtract the returned value with our current_score
def check_for_aces_v4(array, score)
  if score > 21
    if array.include?("acespa")
      array.delete("acespa")
      10
    elsif array.include?("acedia")
      array.delete("acedia")
      10
    elsif array.include?("aceclu")
      array.delete("aceclu")
      10
    elsif array.include?("aceheart")
      array.delete("aceheart")
      10
    else
      0
    end
  else
    0
  end
end

# this method return true if the player goes over 21.
# it then break the loop and puts the score to the screen.
def busted(score, string)
  if score > 21
    puts "The #{string} has a score of #{score}, which is over 21."
    puts "The #{string} goes bust and looses this game."
    true
  end
end

# all the conditions in this method work
def compare_scores(p_score, c_score, p_hand, c_hand)
  if p_score > c_score
    puts "The player wins with #{p_score} points against the #{c_score} of the dealer!"
    puts "Your hand was #{p_hand}"
    puts "The dealer had #{c_hand}"
  elsif c_score > p_score
    puts "The computer wins with #{c_score} points against the #{p_score} of the player!"
    puts "Your hand was #{p_hand}"
    puts "The dealer had #{c_hand}"
  elsif p_score == c_score
    puts "You both have the same score of #{p_score}."
    puts "There is no winner in this round."
    puts "Your hand was #{p_hand}"
    puts "The dealer had #{c_hand}"
  end
end

def win_or_lose(score, string, cards)
  if score > 21
    puts "The #{string} has a score of #{score}, which is over 21."
    puts "The #{string} goes bust and looses this game."
    puts "The #{string}'s hand in the end was: #{cards}"
    true
  elsif score == 21
    puts "The #{string} has hit 21 points and wins this game!"
    puts "The #{string}'s hand in the end was: #{cards}"
    true
  else
    false
  end
end

# append the cards to an array. This way the cards are score permanently.
def add_cards_to_hand(player_cards, cards)
  player_cards << cards
end

# The Introduction
puts ""
puts "Welcome to 21. Draw some cards and don't get a score over 21!"
puts ""
puts "Have fun!"
puts ""

loop do
  # we have to insert the first two cards herethis means
  # all the variables

  # PLAYER TURN
  # Initializing the score variable and the player hand variable.
  player_total_score = 0
  player_hand = []

  # first draw, calculate the score and add the card to the hand (array) 
  # of the player.
  draw = draw_card(DCK)
  player_total_score += calculate_values!(draw, "player")
  add_cards_to_hand(player_hand, draw)

  # the second draw. Rest is same as above
  draw = draw_card(DCK)
  player_total_score += calculate_values!(draw, "player")
  player_total_score -= check_for_aces_v4(player_hand, player_total_score)

  add_cards_to_hand(player_hand, draw)

  break if win_or_lose(player_total_score, "player", player_hand)

  # tell the player score and his hand
  puts "You have drawn two cards. These cards are #{player_hand}. Your total score is #{player_total_score}."
  puts ""

  # COMPUTER FIRST DRAW OF TWO CARDS. ONE IS REVEALED, THE OTHER CARD IS HIDDEN
  # Now the computer draws two cards but only reveals one of them
  # Initializing the score variable and the computer hand variable.
  computer_shown_score = 0
  computer_complete_hand = []
  computer_hand = []
  computer_hidden_card = []
  computer_hidden_score = 0
  player_stay = false
  computer_stay = false


  # first draw, calculate the score and add the card to the hand (array) 
  # of the computer.
  draw = draw_card(DCK)
  computer_shown_score += calculate_values!(draw, "computer")
  add_cards_to_hand(computer_hand, draw)
  add_cards_to_hand(computer_complete_hand, draw)

  # tell the player score and hand of computer
  puts "The computer has drawn two cards. The one card you are seeing is #{computer_hand}." 
  puts "The other card of the computer is hidden. The dealers score is #{computer_shown_score}."
  puts ""

  # draw another card but hide it
  draw = draw_card(DCK)
  computer_hidden_score += calculate_values!(draw, "computer")
  computer_hidden_score += computer_shown_score

  # check for aces
  if check_for_aces(computer_hidden_score, draw)
    computer_shown_score -= 10
    computer_hidden_score -= 10
  end

  # the cards are added to their respective hands
  add_cards_to_hand(computer_hidden_card, draw)
  add_cards_to_hand(computer_complete_hand, draw)

  # break if win_or_lose condition is met
  break if win_or_lose(computer_hidden_score, "dealer", computer_complete_hand)


  # ask to hit or stay to the player
  puts "Hit or stay?"
  puts ""
  answer = gets.chomp
  if answer.downcase.start_with?('s')
    player_stay = true
  elsif answer.downcase.start_with?('h')
    player_stay = false
  end

  loop do

    if player_stay == false
      # PLAYER TURN
      draw = draw_card(DCK)
      player_total_score += calculate_values!(draw, "player")
      add_cards_to_hand(player_hand, draw)
      player_total_score -= check_for_aces_v4(player_hand, player_total_score)

      # display the draw to the player
      puts "You have drawn a #{draw}." 
      break if win_or_lose(player_total_score, "player", player_hand)
      puts "Your hand is now #{player_hand} and your score is now #{player_total_score}."
      puts ""
    else
      puts "You have decided to stay."
    end

    # COMPUTER TURN
    if computer_hidden_score < 17
      draw = draw_card(DCK)
      computer_shown_score += calculate_values!(draw, "computer")
      computer_hidden_score += calculate_values!(draw, "computer")
      add_cards_to_hand(computer_hand, draw)
      add_cards_to_hand(computer_complete_hand, draw)
      # computer_complete_hand = computer_hand + computer_hidden_card
      computer_hidden_score -= check_for_aces_v4(computer_complete_hand, computer_hidden_score)     
      puts "The dealer draws a #{draw}."
      break if win_or_lose(computer_hidden_score, "dealer", computer_complete_hand)
      puts "Dealers shown score is #{computer_shown_score}"
    else
      puts "The Dealer stays"
      computer_stay = true
      break if win_or_lose(computer_hidden_score, "dealer", computer_complete_hand)
    end

    # check fot the stay condition
    if player_stay && computer_stay
      compare_scores(player_total_score, computer_hidden_score, player_hand, computer_complete_hand)
      break
    end

    # ask to hit or stay to the player
    if player_stay == false
      puts "Hit or stay?"
      puts ""
      answer = gets.chomp
      if answer.downcase.start_with?('s')
        player_stay = true
      elsif answer.downcase.start_with?('h')
        player_stay = false
      end
    end

    if player_stay && computer_stay
      compare_scores(player_total_score, computer_hidden_score, player_hand, computer_complete_hand)
      break
    end
  end

  puts ""
  puts "Do you want to play another game? (Y/N)"
  puts ""
  answer = gets.chomp
  break unless answer.downcase.start_with?('y') 
  puts ""
end
