def play_again?
  puts "----------------"
  puts "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def yes
  puts "Yes"
end

def no
  puts "no"
  
end

play_again? ? yes : no