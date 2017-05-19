require "pry"

# first we have to do the data structures. A good idea here would be to have
# a hash with a Arrays as values. This way a key could be hearts and the value would
# be the cards

# You start with a normal 52-card deck consisting of the 4 suits (hearts, diamonds, clubs, and spades), 
# and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).

# example hash for cards = {"hearts" => [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]}



# This is the Hash version of the deck
#deck = {"hearts" => [], "diamonds" => [], "clubs" => [], "spades" => []}
#deck.each_key {|key| deck[key] = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]}

# deck = {["hearts"] => [], ["diamonds"] => [], ["clubs"] => [], ["spades"] => []}

DCK = ["2heart", "3heart", "4heart", "5heart", "6heart", "7heart", "8heart", "9heart", "10heart", "jackheart", "queenheart", "kingheart", "aceheart",
"2dia", "3dia", "4dia", "5dia", "6dia", "7dia", "8dia", "9dia", "10dia", "jackdia", "queendia", "kingdia", "acedia",
"2clu", "3clu", "4clu", "5clu", "6clu", "7clu", "8clu", "9clu", "10clu", "jackclu", "queenclu", "kingclu", "aceclu",
"2spa", "3spa", "4spa", "5spa", "6spa", "7spa", "8spa", "9spa", "10spa", "jackspa", "queenspa", "kingspa", "acespa" ]

# deck.each_key {|key| deck[key] = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen", "king", "ace"]}

# p deck

# how can we acces the key and value pair later when we draw a card??

# now we must write a method to draw a card from the deck



def draw_card(dck) # in this method we select one of the values in our array for the player
  dck[rand(0..51)]
end

def compare_cards(dck) # here we compare the drawn cards
  puts "The player has #{player_draw_card(dck)} and the computer has #{computer_draw_card(dck)}"  
end


# the drawn card is played in the "draw" variable and then if draw begin with 2 through 10 we will add than number. 
# if it begins with anything else we return 10
def calculate_values!(cards, user)
  puts "For this turn the #{user} has drawn: #{cards}"
  if cards.start_with?("2", "3", "4", "5", "6", "7", "8", "9")
    cards.byteslice(0).to_i
  elsif cards.start_with?("10", "j", "q", "k")
    10 
  elsif cards.start_with?("a")
    11
  end
end

def compare_scores(p_score, c_score) # all the conditions in this method work
  if p_score > c_score
    puts "You are ahead in points!"
  elsif c_score > p_score
    puts "The Computer is ahead in points"
  elsif p_score == c_score    
    puts "You both have the same score."
  end  
end

def check_for_aces(score, cards)
  if score > 21 && cards.start_with?("a")
    true  
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


puts "Welcome to 21. Draw some cards and don't get a score over 21!"
puts "Have fun!"
puts ""

loop do
  player_total_score = 0
  computer_total_score = 0
  puts "Your game starts now!"

  loop do #  this is our main game loop
    puts ""

    # player turn
    draw = draw_card(DCK)
    player_total_score += calculate_values!(draw, "player")

    # check for aces
    if check_for_aces(player_total_score, draw)
      player_total_score -= 10
    end    
    puts "-------------------------------------"

    #break if the player goes over 21
    break if busted(player_total_score, "player")

    # output the score of the player
    puts "The total score of the player is: #{player_total_score}"
    puts "-------------------------------------"
    puts ""

    # comouter turn
    draw = draw_card(DCK)
    computer_total_score += calculate_values!(draw, "computer")

    # check for aces
    if check_for_aces(computer_total_score, draw)
      computer_total_score -= 10
    end    
    
    #output the score of the computer
    puts "-------------------------------------"
    puts "The total score of the computer is: #{computer_total_score}"
    puts "-------------------------------------"
    break if busted(computer_total_score, "dealer")

    # compare the score and put them out to the screen
    compare_scores(player_total_score, computer_total_score)
    puts "-------------------------------------"

    # ask to hit or stay to the player
    puts "Hit or stay?"
    puts ""    
    answer = gets.chomp

    # break if the player says "s"
    break if answer.downcase.start_with?('s')# we should also break if we go 'bust', which is a score over 21  #  we go again if we press anything but "s"
  end

  puts ""
  puts "Do you want to play another game? (Y/N)"
  puts ""
  answer = gets.chomp
  break unless answer.downcase.start_with?('y') #  we can go again if we press 'y'
  puts ""
end