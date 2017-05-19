=begin
1. Have a prompt that weclomes the user
2. Ask the user to enter the loan amount
3. Ask for the annual percentage rate
4. Ask for the loan duration in months
=end

def prompt(message)
  puts("=> " + "#{message}")
end

prompt("Welcome to the mortgage calculator!")
prompt("Please enter three pices of information...")

prompt("How hight should the loan amount be in $?")
lamount = gets.chomp


prompt("What is the annual percentage Rate?")
lrate = gets.chomp

prompt("What is your desired loan duration in months?")
ldur = gets.chomp

prompt("You have entered the following information:")
prompt("You want a loan for #{lamount}$ with a APR of #{lrate}% for a duration of #{ldur} months.")

p = lamount.to_f
j = (lrate.to_f / 12) / 100

n = ldur.to_f

puts("The amount is #{p}, the monthly interest rate is#{j} and loand duration in months is #{n}")

# m = p(loan aount) * (j(monthly interest rates) / (1 - (1 + j)**-n(load durration in months)))

# The next step is to put these numbers in the calculator and to validate the numbers

m = p * (j / (1 - (1 + j)**-n))

puts("Your monthly payment comes to #{m}$")


