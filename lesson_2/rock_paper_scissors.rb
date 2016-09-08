VALID_CHOICES = %w(rock paper scissors spock lizard)
def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') || (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') || (first == 'scissors' && second == 'lizard') ||
    ((first == 'spock' && second == 'scissors') || (first == 'spock' && second == 'rock')) ||
    ((first == 'lizard' && second == 'paper') || (first == 'lizard' && second == 'spock')) 
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Its a tie!")
  end
end

counter_player = []
counter_computer = []
general_counter = []

def winning_counter(player, computer, counter_p, counter_c, general_c)
  if win?(player, computer)
    counter_p << "Win for you!"
    # puts counter_p
    if counter_p.length == 5
      prompt("You won five games in a row and won the match!")
      exit
    end
  elsif win?(computer, player)
    counter_c << "Win for the computer!"
    # puts counter_c
    if counter_c.length == 5
      prompt("The computer has won five games in a row and you have been defeated...")
      exit
    end
  elsif general_c << "Its a Tie!"
    if general_c.length == 5
      prompt("This games has had five ties and will end in a tie!")
      exit
    end
  end
end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if choice.downcase().start_with?('r')
      choice = VALID_CHOICES[0]
    elsif choice.downcase().start_with?('l')
      choice = VALID_CHOICES[4]
    elsif choice.downcase().start_with?('p')
      choice = VALID_CHOICES[1]
    elsif choice.downcase().start_with?('sc')
      choice = VALID_CHOICES[2]
    elsif choice.downcase().start_with?('sp')
      choice = VALID_CHOICES[3]
    end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer chose: #{computer_choice}")

  winning_counter(choice, computer_choice, counter_player, counter_computer, general_counter)
  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye.")
