# Here i can practice for the forst assessment
require 'pry'
# a = [1, 2, 3, 4]

# this method work to put out 10
# sum = 0
# a.each do |x|
#   sum += x 
# end

# sum = 0
# new_a = a.each do |x|
#   x > 2
# end

# # puts sum # puts out 10
# p new_a
# p a

# map

# map_array = a.map do |x|
#   (x + 5) * 2
# end

# p map_array

# b = ["one", "hello", "joijoioi"]

# map_b = b.select do |x|
#   x + "!" + "iodjoaiwdjawjoi"
# end

# p map_b
# p b

# def prefix(str)
#   # str.prepend("Mr. ")
#   "Mr. " << str
# end

# name = 'joe'
# prefix(name)

# puts name



# counter = 0
# loop do
#   counter += 1
#   if counter >= 5
#     puts arr[counter]
#     counter += 1
#     break if counter == arr.length
#   end
# end

# arr.each do |x|
#   if x > 5 
#     puts x
#   end

# end

# 0 << arr

# arr.insert(0 ,0)

# arr << 12

# arr.pop
# arr << 3
# arr.uniq!

# odd_arr = arr.select do |x|
#   x.odd?
  
# end


# arr.map! do |x|
#   x + 1

# end

# p arr
# p odd_arr

# HASHES

# hsh = {a:1, b:2, c:3, d:4}
# hsh[:e] = 5
# p hsh[:b]
# p hsh

# hsh.each do |k, v|
#   if v < 3.5
#     puts "#{k} and #{v}"
#   end
# end

# smaller_hsh = hsh.select do |k, v|
#   v < 3.5
# end

# p smaller_hsh

# hsh.select! do |k, v|
#   v > 3.5
# end

# p hsh

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr.map! do |x|
#   # x << 8 # select = unchanged arr / map = each value is multiplied by 8?
#   # x + 1 # select = unchanged arr / map = each element is incremented by one and inserted into an Array
#   # false # select = empty arr / map = false is the return value so we get an array full of false
#   # puts "" # select = nil is a falsey value and thus the array in emty / map = the return value is nil so the entire array is full of nil

# end

# p arr

# write a mthod that takes a string as an argument and write a method 
# that return the string in reverse order without using the #reverse method 
# of the string class.

# test_str = "Rentner"

# puts test_str + " Is the string in the beginning"

# puts test_str.reverse + " Is the solution" 

# def reverse(str)  
#   counter = 0
#   str.length.times do 
#     x = str.slice!(str.length - 1)
#     # str << x
#     str.insert(counter, x)
#     counter += 1    
#   end
#   str  
# end

# puts reverse(test_str)

# def fizzbuzz(num1, num2)
#   range = (num1..num2)
#   f_array = []
#   puts "# ----------------------"
#   puts "# **input:**"
#   puts "# fizzbuzz(#{num1}, #{num2})"
#   puts "# **output:**"
#   print "# "
#   range.each do |n|    
#     if n % 3 == 0 && n % 5 == 0
#       f_array << "FizzBuzz"
#     elsif n % 5 == 0
#       f_array << "Buzz"
#     elsif n % 3 == 0
#       f_array << "Fizz"        
#     else
#       f_array << n        
#     end
#   end
#   puts f_array.join(", ")

# end

# fizzbuzz(1, 15)

# PRODUCTS = [
#   { name: "Thinkpad x210", price: 220 },
#   { name: "Thinkpad x220", price: 250 },
#   { name: "Thinkpad x250", price: 979 },
#   { name: "Thinkpad x230", price: 300 },
#   { name: "Thinkpad x230", price: 330 },
#   { name: "Thinkpad x230", price: 350 },
#   { name: "Thinkpad x240", price: 700 },
#   { name: "MacBook Leopard", price: 300 },
#   { name: "MacBook Air", price: 700 },
#   { name: "MacBook Pro", price: 600 },
#   { name: "MacBook", price: 1449 },
#   { name: "Dell Latitude", price: 200 },
#   { name: "Dell Latitude", price: 650 },
#   { name: "Dell Inspiron", price: 300 },
#   { name: "Dell Inspiron", price: 450 },
# ]

# query = {
#   price_min: 240,
#   price_max: 280,
#   q: "Thinkpad"
# }

# query2 = {
#   price_min: 300,
#   price_max: 450,
#   q: "DelL"
# }

# query3 = {
#   price_min: 500,
#   price_max: 900,
#   q: "MacBook"
# }

# query4 = {
#   price_min: 200,
#   price_max: 300,
#   q: "dell"
# }



# user_query = {}
# def enter_query(query)
#   print "What is the min price? "
#   query[:price_min] = gets.chomp.to_i
#   print "What is the max price? "
#   query[:price_max] = gets.chomp.to_i
#   print "What is the name of the laptop you are looking for? "
#   query[:q] = gets.chomp
  
# end

# def search(query)
#   PRODUCTS.each do |k|
#     if k[:name].downcase.start_with?(query[:q].downcase) && (query[:price_min]..query[:price_max]).include?(k[:price])
#       puts "# [ #{k} ]"
#     end
#   end
# end

# after_query = []
# def search_with_select(query)
#   after_query = PRODUCTS.select do |k|
#     k[:name].downcase.start_with?(query[:q].downcase) && (query[:price_min]..query[:price_max]).include?(k[:price])
#   end
#   puts after_query 
# end



# test_query = {}
# def self_search(query)  
#   enter_query(query)  
#   PRODUCTS.each do |k|
#     if k[:name].downcase.start_with?(query[:q].downcase) && (query[:price_min]..query[:price_max]).include?(k[:price])
#       puts "# [ #{k} ]"
#     end
#   end  
# end

# puts "query 1"
# search(query)
# puts "query 2"
# search(query2)
# puts "query 4"
# search(query4)
# puts "query 3"
# search(query3)

# enter_query(user_query)

# self_search(test_query)

# search_with_select(query2)

# arr_with_vowels = ["green", "yellow", "black", "white"]

# VOWELS = ["a", "e", "i", "o", "u"]

# def remove_vowels(strings)
#   strings.map do |string|
#     chars = string.split("")
#     VOWELS.each { |vowel| chars.delete(vowel)}
#     chars.join("")
#   end
# end

# p remove_vowels(arr_with_vowels)

# def remove_vowels(array)
#   #p array
#   array.map! do |x|
#     if x.include?("a")
#       x.delete("a")
#       if x.include?("e")
#         x.delete("e")
#       end

#     end 

#     # if x.include?("e")
#     #   x.delete("e")    
#     # end

#     # if x.include?("i")
#     #   x.delete("i")    
#     # end 

#     # if x.include?("o")
#     #   x.delete("o")    
#     # end 

#   end
#   p array
# end

# remove_vowels(arr_with_vowels)

# STRING BALANCE METHOD

# def balancer(string)  
#   left_p = string.count("(")
#   right_p = string.count(")")
#   total_p = left_p + right_p
#   puts "The input is #{string}"
#   print "This input has an even number of parentheses: "
#   if total_p.even?
#     p true
#   else
#     p false
#   end  
  
#   paren_count = 0
#   string.split("").each do |char|    
#     paren_count += 1 if char == "("
#     paren_count -= 1 if char == ")"
#     if paren_count < 0
#       puts "This input has a wrong order of parentheses"
#       break
#     end
#   end
# end

# balancer("(()) )))")

# orime number is divisible by itself and 1 but no other number=> x % x == 0 && x % 1 == 0
# no ther number x % (other number) != 0
# def find_primes(num1, num2)
#   range = (num1..num2)
  
#   range.each do |x|
#     if x % x == 0 && x % 2 != 0
#       print x
#     end
#   end
#   puts ""
# end

# find_primes(3, 10)

# a = "The man said, \'Hi there!\'"

# puts a

# movies = {:batman => 1975, :new_movei => 2004, :indpendance_day => 2013, :bla => 2001, :old_movie => 1981 }

# movies.each do |k, v|
#   puts "The movie #{k} came out in #{v}"
# end


# def factorial(num)
#   num * num
# end

# puts factorial(7)

# a = 7

# 3.times do |n|
#   a = 16
# end

# puts a

# a = 1

# def reassign(a)

#   a += 10
  
# end

# reassign(a)
# puts a

# a = 1
# puts a

# a + 1
# puts a

# a += 1
# puts a

# def say(words='hello')
#   puts words + "."
# end

# say()
# say("hi")

# def add_three(number) 
#   foo = number + 3
#   foo = 0
# end

# returned_value = add_three(4)
# puts returned_value

# i = 0

# loop do
#   i += 2
#   if i == 4
#     next
#   end
#   puts i
#   break if i == 10
# end

# puts i


# 1.times do
#   a = 1
# end

# a = 0
# b = 10

# def test(var) # we pass in be here (see the method call)
#   puts "b is #{var}" # b is variable is passed in
#   a = var # this is not the same 'a' as above, it is 'a' different 'a, which is initialized here
#   puts "a is #{a}" # we can call 'a' here because we created it in the method
#   c = 10 # creating a new variabel 'c'.
#   puts "c is #{c}" # 'c' cas be called in the method, but not outside of it
# end

# puts a # the puts out '0', because we are calling the original 'a'.

# test(b) # passing in 'b' as 'var'

# 1.times do
#   a = 5 # This Bloc is not a method and because of that it has acces to 'a'. We are reassigning 'a' here. 
# end
# puts "But a is still #{a}" # we have reassigned the original 'a' and it is 5 now. 



# x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x -= 1
# end

# puts "Done"

# puts a

# x = gets.chomp.to_i

# until x < 1  
#   x -= 1
#   puts x
# end

# puts "Done!"

# loop do
#   puts "Do you want to do that again?"
#   answer = gets.chomp.downcase
#   if answer != "y"
#     break    
#   end
# end

# x = gets.chomp.to_i

# for i in 1..x do
#   c = 60
#   puts i

# end

# puts c

# puts "Done!"

# x = 0

# while x <= 10
#   if x == 7
#     break
#   elsif x.odd?
#     puts x      
#   end
#   x += 1
# end

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
# x = 1

# names.each do |name|
#   puts "#{x}. #{name}"
#   x += 1
# end

# a = x = [1, 2, 3, 4, 5]
# x.each do |a|
#   puts a + 1
# end

# p a

# words = gets.chomp

# while words != "stop"

#   puts words
#   words = gets.chomp
# end

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

# names.each_with_index do |item, index|
#   puts "#{index + 1}. #{item}"

# end

# a = [1, 2, 3]

# a_new = a.map {|x| x + 2}

# p a 

# p a_new

# a = [1, 2, 3 , 3]

# b = a

# c = a.uniq

# p a # [1, 2, 3, 3]
# p b # [1, 2, 3, 3]
# p c # [1, 2, 3]

# a = [1, 2, 3 , 3]

# b = a

# c = a.uniq!

# p a # [1, 2, 3]
# p b # [1, 2, 3]
# p c # [1, 2, 3]

# def test(b)
#   b.map {|letter| "I like the letter: #{letter}"}
# end

# a = ['a', 'b', 'c']
# test(a)
# p a # ['a', 'b', 'c']

# def test(b)
#   b.map! {|letter| "I like the letter: #{letter}"}
# end

# a = ['a', 'b', 'c']
# test(a)
# p a # map! is destrcutive: ['I like the letter a', 'I like the letter b', 'I like the letter c']

# def take_block(number, &block)
#   block.call(number)
# end

# number = 42
# take_block(number) do |num|
#   puts "Block being called in the method! #{num}"
# end

# def check_string(string)
#   if string.include?("lab")
#     puts string    
#   end
# end

# check_string("laboratory")

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# # arr_odd = arr.select do |x|
# #   x.odd?
# # end

# # p arr_odd

# arr << 11
# arr.unshift(0)

# arr.pop
# arr << 3


# arr.uniq!
# p arr

# h = {a:1, b:2, c:3, d:4}

# h.delete(:b)
# h[:e] = 5
# h.select! do |k ,v|
#   v > 3.5
# end

# p h

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# p contact_data.first

# p contacts["Joe Smith"] = contact_data.first

# p contacts["Sally Johnson"] = contact_data.last

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if do |x|
#   x.start_with?("s") || x.start_with?("w")
# end

# p arr

# def add_three(num)
#   puts num + 3
  
# end

# returned_value = add_three(3)
# puts returned_value

#Write a method that will return a random number between 1 and an argumnet you pass in:

# def randomize(num) 
#   rand(1..num)
# end

# 100.times do 
#   p randomize(10)
# end

# "hello"
# "HELLO"
# "HELLO!"

# s = "hello"
# in method value = "HELLO"
# in method value = "HELLO!"
# s = "hello"
# t = "HELLO!"

# def fix(value)
#   value = value.upcase!
#   value.concat("!")  
# end

# s = "hello"
# t = fix(s)

# puts "s is #{s}" # "HELLO!"
# puts "t is #{t}" # "HELLO!"

# first object id will be of s
# the second will be the same as the firt
# third one will be different
# fourth will be the same as third. 

# in the beginning s = "hello"
# then s and value = "helloxyz"
# then s = "helloxyz" and value = "HELLOXYZ"
# then s = "helloxyz" and value = "HELLOXYZ!"

# first s = "abc"
# then s = "axc"
# this value is then also t

# def uppercase(value) value.upcase! # THIS DOES NOT OUTPUT NAME. NAME HAS A MISSING VAR ERROR. AKS IN FORUM 
# end

# name = 'William'
# uppercase(name)
# puts name 

# def print_id(number)
#   puts "In method object id = #{number.object_id}"
# end

# value = "hi"
# puts "Outside method object id = #{value.object_id}"
# print_id(value)

# def uppercase(value) value.upcase!
# end

# name = 'William'
# uppercase(name)
# puts name               # WILLIAM

# a = 0

# b = while a < 10
#   p a  
#   break a if a == 5
#   a += 1  
# end

# p b

# p :"adrian"

# def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 6) # [4, 2, 3, 6]

# p "xyz".upcase

# a = %w(a b c d e)

# a.insert(3, 5, 6, 7)

# p a

# s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect # ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
# puts s.split(',').inspect # ["abc def ghi" , "jkl mno pqr", "stu vwx yz"]
# puts s.split(',', 2).inspect # ["abc def ghi" , "jkl mno pqr,stu vwx yz"]
# p s.split("")

# require 'date'

# puts Date.new #  gives us the current date
# puts Date.new(2016) # Date: 20016-01-01
# puts Date.new(2016, 5) # Date: 2016-05-01
# puts Date.new(2016, 5, 13) # Date: 2016-05-13
# puts Date.new(05)

# a = [1, 4, 8, 11, 15, 19]

# p a.bsearch {|x| x > 8 }

# a = %w(a b c d e)
# # puts a.fetch(7) # index error
# puts a.fetch(7, 'beats me') # beats me
# puts a.fetch(7) { |index| index** 2 } # 14

# 5.step(to: 10, by: 3) { |value| puts value } # 5, 8

# a = [5, 9, 3, 11]
# puts a.min(1) # this code does not work for me, it is exercise in reading documentatoin 2

# a = [5, 9, 3, 11]
# puts a.min(2)

# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a # 7


# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts a # 7

# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a # 7


# a = "Xyzzy"

# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a # "Xy-zy"

# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# c = my_value(a)
# puts a # "Xyzzy"
# p c

# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a # This method will give an error, because "a" is not available in the method.

# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a # 3, only the last value stys in the variable

# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a # 7

# a = 7
# array = [1, 2, 3]


#   array.each do |b|
#     a += b
#   end



# puts a # 13


# loop do
#   puts 'Just keep printing...'
#   break
# end

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   break if iterations == 5
#   iterations += 1
#   # break if iterations > 5
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == "yes"
# end

# say_hello = true

# while say_hello
#   5.times { puts 'Hello!' }
#   say_hello = false
# end

# var = true
# counter = 0

# while var
#   p rand(100)
#   counter += 1
#   if counter == 5 then var = false end
# end

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count == numbers.length
#   puts numbers[count]
#   count+= 1
# end

# for i in 1..100
#   puts i if i.odd?
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']
# count = 0

# for i in 0..friends.length - 1
#   puts "Hello, #{friends[i]}!"
# end

# count = 1

# loop do
#   if count.odd?
#     puts "#{count} is odd!"
#   else
#     puts "#{count} is even!"
#   end
#   count += 1
#   break if count > 5
# end

# loop do
#   number = rand(100)
#   puts number
#   if (0..10).include?(number)
#     # puts "#{number} is between 0 and 10"
#     break
#   end  
# end

# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed"
#     break 
#   end
# else
#   puts "The loop wasn't processed!"  
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "Thats correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"    
#   end
# end


# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.length == 5
# end
# puts numbers


# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   last_name = names.shift
#   puts last_name
#   break if names.empty?
# end

# while names.length != 0
#   last_name = names.pop
#   puts last_name  
# end

# until names.empty?
#   last_name = names.pop
#   puts last_name  
# end


# 5.times do |index|
#   puts index
#   break if index == 2
# end

# 5.times do |index|
#   puts index
#   break if index == 4
# end

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   puts "a is : #{number_a} and b is: #{number_b}."
#   if number_a < 5 && number_b < 5
#     next
#   end
#   puts "5 was reached!"
#   break
# end

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   puts "a is : #{number_a} and b is: #{number_b}."
#   if number_b >= 5 || number_a >= 5
#     puts "Five has been reached!"
#     break    
#   end
# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings != 0
#   greeting
#   number_of_greetings -= 1
# end

# def repeat_input
#   puts ">> Type anything you want: "
#   answer = gets.chomp.to_s
#   puts answer  
# end

# repeat_input

# puts ">> What is your age in years?"
# age = gets.chomp.to_i
# age = age * 12
# puts "You are #{age} months old."



# loop do
#   puts ">> Do you want me to print something?"
#   answer = gets.chomp.downcase
#   if answer == "y"
#     puts "something"
#     break
#   elsif answer == "n"
#     break
#   else
#     puts ">> Invalid input! Please enter y or n"
    
#   end
# end

# choice = nil
# loop do
#   puts '>> Do you want me to print something? (y/n)'
#   choice = gets.chomp.downcase
#   break if %w(y n).include?(choice)
#   puts '>> Invalid input! Please enter y or n'
# end
# puts 'something' if choice == 'y'

# choice = 0
# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3:'
#   choice = gets.chomp.to_i
#   break if choice >= 3
#   puts ">> That's not enough lines."
# end

# choice.times do
#   puts "Launch School is the best!"
# end

# PASSWORD = "SecreT"
# USERNAME = "admin"

# loop do 
#   puts ">> Please enter user name:"
#   u_name = gets.chomp
  
#   puts ">> Please enter your password:"
#   answer = gets.chomp

#   break if answer == PASSWORD && u_name == USERNAME
#   puts ">> Authorization failed!"
# end

# puts "Welcome!"

# def add(a, b)
#   a + b
# end

# def test(d, e)
#   c = add(e, d)
#   puts c
# end

# test(5, 7)

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end
# numer = 0
# denom = 0

# loop do
#   puts ">> Please enter the numerator:"
#   numer = gets.chomp

#   break if valid_number?(numer)
#   puts ">> Invalid input. Only integers are allowed."
# end

# loop do
#   puts ">> Please enter the denominator:"
#   denom = gets.chomp

#   if denom == "0"
#     puts ">> Invalid input. A denominator of 0 is not allowed."
#   else
#     break if valid_number?(denom)
#     puts ">> Invalid input. Only integers are allowed."
#   end  
# end


# def divide(num1, num2)
#   result = num1.to_i / num2.to_i
#   puts ">> #{num1} / #{num2} is #{result}"  
# end

# divide(numer, denom)


# choice = 0
# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
#   choice = gets.chomp

#   if choice.downcase == "q"
#     break
#   elsif choice.to_i >= 3
#     choice.to_i.times do
#       puts "Launch School is the best!"
#     end
#   else
#     puts ">> That's not enough lines."
#   end  
# end

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# num1 = 0
# num2 = 0
# loop do
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     num1 = gets.chomp
#     break if valid_number?(num1)
#     puts ">> Invalid input. Only non-zero integers are allowed."
#   end

#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     num2 = gets.chomp
#     break if valid_number?(num2)
#     puts ">> Invalid input. Only non-zero integers are allowed."
#   end

#   if num1.to_i > 0 && num2.to_i > 0 || num1.to_i < 0 && num2.to_i < 0
#     puts ">> Sorry. One integer must be positive, one must be negative."
#     puts ">> Please start over."
#   else
#     break
#   end
# end

# puts result = num1.to_i + num2.to_i

# def hello
#   "Hello "
# end

# def world
#   "World"
# end

# def greet
#   hello + world
# end

# puts greet

# def car(company, type)
#   "#{company}, #{type}"
# end

# puts car("Toyota", "Corolla")

# daylight = [true, false].sample

# def time_of_day(bool)
#   if bool
#     puts "Its daytime"
#   else
#     puts "Its nighttime"    
#   end  
# end

# time_of_day(daylight)

# def dog(name)
#   name
# end

# def cat(name)
#   name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat("Ginger")}."

# def assign_name(name ="Bob")
#   name
# end

# puts assign_name == "Bob"
# puts assign_name("Kevin") == "Kevin"

# def add(num1, num2)
#   num1 + num2
# end

# def multiply(num1, num2)
#   num1 * num2
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# def name(arr)
#   arr.sample  
# end

# def activity(arr)
#   arr.sample
# end

# def sentence(name, activity)
#   "#{name} went #{activity} today!"
# end

# p sentence(name(names), activity(activities))

# def print_me
#   "I'm printing the return value!"
# end

# puts print_me

# def meal
#   puts 'Dinner'
#   return 'Breakfast'
# end

# puts meal
# Dinner
# 
# Breakfast

# def meal
#   'Dinner'
#   puts 'Dinner'
# end

# p meal
# "Dinner"
# nil

# def meal
#   return 'Breakfast'
#   'Dinner'
#   puts 'Dinner'
# end

# puts meal # Breakfast
# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
# end

# puts count_sheep
# 1
# 2
# 3
# 4
# 5
# 5

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
#   10
# end

# puts count_sheep
# 0
# 1
# 2
# 3
# 4
# 10

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#     if sheep >= 2
#       return
#     end
#   end
# end

# p count_sheep
# 0
# 1
# 2
# nil

# def tricky_number
#   if true
#     number = 1
#   else
#     2
#   end
# end

# puts tricky_number # 1

# x = 2
# until x == 0
#   puts "hello"
#   x -= 1
# end

# sun = ['visible', 'hidden'].sample

# if sun == "visible"
#   puts "The sun is so bright"
# end

# unless sun == "visible"
#   puts "The clouds are blocking the sun!"  
# end
# p sun

# boolean = [true, false].sample

# boolean ? (p "Im true!") : (p "Im false!")
#p a

# number = 7

# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end


# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when "green"
#   puts "GO!"
# when "yellow"
#   puts "Slow down!"
# when "red"
#   puts "Stop!"  
# end

# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == "green"
#   puts "GO!"
# elsif stoplight == "yellow"
#   puts "Slow down!"
# else
#   puts "Stop!"  
# end

# status = ['awake', 'tired'].sample

# a = if status == "awake"
#       "Be productive!"
#     else
#       "Go to sleep!"  
#     end

# p a

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'  then puts "Go!"
# when 'yellow' then puts 'Slow down!'
# when 'red'    then puts 'Stop!'
# end

# empty_string = Stirng.new

# puts "It's now 12 o'clock."

# name = 'Roger'

# p name.casecmp('RoGeR') == 0
# p name.casecmp('DAVE') == 0

# name = 'Elizabeth'

# puts "Hello, #{name}!"

# first_name = 'John'
# last_name = 'Doe'

# def full_name(first, last)
#   first_name + last_name
# end

# puts "#{first_name} #{last_name}"
# puts full_name = first_name + " " + last_name 

# state = 'tExAs'

# puts state.capitalize
# puts state

# greeting = 'Hello!'
# greeting.replace("Goodbye!")
# puts greeting


# alphabet = 'abcdefghijklmnopqrstuvwxyz'

# p alphabet.split("")

# words = 'car human elephant airplane'
# words.split(" ").each {|x| puts x + "s"}

# colors = 'blue pink yellow orange'

# puts colors.include?("yellow")
# puts colors.include?("purple")

# colors = 'blue boredom yellow'

# puts colors.include?('red') #  Will return true because "red" is included in boredom and the mehtod .include?
# check if the string is included somewhere and not if its on its own.

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]

# puts "I have a pet #{my_pet}!"

# pets = ['cat', 'dog', 'fish', 'lizard']

# p my_pets = pets[2, 3]

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.delete_at(1)
# puts "I have a pet #{my_pets[0]}!"

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# p pets
# p my_pets << pets[1]
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


# colors = ['red', 'yellow', 'purple', 'green']

# colors.each {|x| puts "Im the color #{x}!"}

# numbers = [1, 2, 3, 4, 5]

# p doubled_numbers = numbers.map {|x| x * 2}

# numbers = [5, 9, 21, 26, 39]

# p divisible_by_three = numbers.select {|x| x % 3 == 0}

# [["Dave", 7], ["Miranda", 3], ["Jason", 11]]

# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# p flat_favorites = favorites.flatten

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# puts array1 == array2


# car = {type: "sedan", color: "blue", mileage: 80_000}
# car[:year] = 2003

# p car

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
#   year:    2003
# }

# car.delete(:mileage)
# p car

# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }

# puts car[:color]


# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |k ,v|
#   puts "A #{k} number is #{v}."
# end

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# p half_numbers = numbers.map {|k, v| v / 2}


# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# p low_numbers = numbers.select {|k, v| v < 25}

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                  value < 25
#                end

# p low_numbers
# p numbers

# car = {
#   type: "sedan",
#   color: "blue",
#   year: 2003,

#   truck = {
#     type: "pickup",
#     color: "red",
#     year: 1998
#   }
# }

# car = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]


# def repeat(string, num)
#   num.times do
#     puts string
#   end
# end

# repeat('Hello', 3)

# def is_odd?(num)
#   if num.round % 2 != 0
#     true
#   else
#     false
#   end
# end

# def is_odd?(number)
#   number % 2 == 1
# end


# puts is_odd?(2)
# puts is_odd?(5)
# puts is_odd?(-17)
# puts is_odd?(-8)
# puts is_odd?(7.1)
# puts is_odd?(-5.0)

# def digit_list(num)
#   x = num.to_s.split("")
#   x.map {|y| y}
# end

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# p digit_list(12345) #== [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurences(arr)
#   unique = arr.uniq
#   unique.each do |x|
#     puts "#{x} => #{arr.count(x)}"
#   end
# end

# count_occurences(vehicles)

# def reverse_sentence(string)
#   split_words = string.split
#   count = split_words.length - 1
#   new_arr = []  
#   until count < 0    
#     new_arr << split_words[count]
#     count -= 1
#   end
#   new_arr.join(" ")
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_words(string)
#  split_words = string.split
#  split_words.map! do |x|
#   if x.length >= 5
#     x.reverse
#   else
#     x
#   end
#  end
#  split_words.join(" ")

# end

# puts reverse_words('Professional')
# puts reverse_words('Walk around the block')
# puts reverse_words('Launch School')


# def stringy(num)
#   arr = []
#   counter = num

#   loop do
#     arr << "1"
#     counter -= 1
#     break if counter == 0

#     arr << "0"
#     counter -= 1
#     break if counter == 0
#   end
  
#   arr.join("")
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# def average(arr)
#   avr = 0
#   arr.each do |x|
#     avr += x
#   end
#   avr / arr.length
# end

# puts average([1, 5, 87, 45, 8, 8])  == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# def sum(num)
#   new_number = 0
#   num.to_s.split("").each do |x|
#                       new_number += x.to_i
#                     end
# new_number
# end

# def sum(num)

#   a = num.to_s.split("")
#   new_number = 0
#   a.length.times do 
#     new_number += a.pop.to_i
#   end
#   new_number
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def calculate_bonus(bonus, bool)
#   if bool
#     bonus / 2
#   else
#     bonus = 0    
#   end
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# puts "Enter a name"

# def name
#   name ||= "Test"
#   name = gets.chomp

# end
# puts "#{name} is #{rand(20..200)} years old!" 


# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i
# puts "The area of the room is #{width * length} square meters (#{(width * length) * 10.7639} square feet)."

# print "What is the bill?" 
# bill = gets.chomp.to_f

# print "What is the tip percentage?" 
# tip = (gets.chomp.to_f / 100) * bill

# puts "The tip is $#{tip}"
# puts "The total is $#{tip + bill}"

# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retire = gets.chomp.to_i

# t = Time.now.year

# year_to_work = retire - age
# year_retire = t + year_to_work
# puts "Its #{t}. You will retire in #{year_retire}." 
# puts "You have only #{year_to_work} years left to work to go!"

# puts "What is your name?"
# name = gets.chomp.to_s

# if name.end_with?("!")
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"  
# end

# (1..99).each do |x|
#   puts x if x.odd?
# end

# arr = (1..99).select do |x|
#   x.odd?
# end
# puts arr

# EVEN
# value = 0
# while value <= 99
#   puts value
#   value += 2  
# end

# arr = (1..99).select do |x|
#   x.even?
# end
# puts arr

# def compute_sum(number)
#   (1..number).inject {|sum, n| sum + n}  
# end

# def compute_product(number)
#   (1..number).inject {|sum, n| sum * n}   
# end

# puts ">> Please enter an integer greater than 0:"
# number = gets.chomp.to_i
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# if choice == "s"
#   sum = compute_sum(number) 
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# else
#   product = compute_product(number) 
#   puts "The product of the integers between 1 and #{number} is #{product}."
# end

# name = "bob"
# save_name = name #  Bob
# name = "Alice" # Alice
# puts name, save_name

# name = 'Bob' # Bob
# save_name = name # Bob
# name.upcase! # BOB
# puts name, save_name

# array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo) # an Array with these names
# array2 = [] # empty array
# array1.each { |value| array2 << value } # now array2 has the array with all the names from array1
# array1.each { |value| value.upcase! if value.start_with?('C') } #  the Cs will be lowercase
# puts array2

# loop do
#   numbers = []
#   search_number = []
#   nth = ["1st", "2nd", "3rd", "4th", "5th", "last"]
#   counter = 0
#   loop do
#     puts "==> Enter the #{nth[counter]} number:"
#     counter += 1
#     num = gets.chomp.to_i
#     numbers << num
#     if numbers.size < 5 then next end
#     puts "==> Enter the #{nth[5]} number:"
#     num = gets.chomp.to_i
#     search_number << num
#     break
#   end
#   if numbers.include?(search_number[0])
#     puts "The number #{search_number[0]} appears in #{numbers}."
#   else
#     puts "The number #{search_number[0]} does not appear in #{numbers}."  
#   end
#   puts ""
# end

# puts "Enter the first number:"
# num1 = gets.chomp.to_i

# puts "Enter the second number:"
# num2 = gets.chomp.to_i

# def addition(num1, num2)
#   result = num1 + num2
#   puts  "==> #{num1} + #{num2} = #{result}" 
# end

# addition(num1, num2)

# def subtraction(num1, num2)
#   result = num1 - num2
#   puts  "==> #{num1} - #{num2} = #{result}" 
# end

# subtraction(num1, num2)

# def multiplication(num1, num2)
#   result = num1 * num2
#   puts  "==> #{num1} * #{num2} = #{result}" 
# end

# multiplication(num1, num2)

# def division(num1, num2)
#   result = num1 / num2
#   puts  "==> #{num1} / #{num2} = #{result}" 
# end

# division(num1, num2)

# def modulus(num1, num2)
#   result = num1 % num2
#   puts  "==> #{num1} % #{num2} = #{result}" 
# end

# modulus(num1, num2)

# def square(num1, num2)
#   result = num1 ** num2
#   puts  "==> #{num1} ** #{num2} = #{result}" 
# end

# square(num1, num2)


# puts "Please write word or multiple words: "

# input = gets.chomp
# input_no_whitespaces = input.delete(" ")

# puts "There are #{input_no_whitespaces.length} characters in \'#{input}\'."

# def multiply(num1, num2)
#   num1 * num2  
# end
  
# puts multiply(5, 3) == 15

# def square(num)
#   num * num  
# end

# def multiply(num1, num2, power=1)
#   num1 ** (num2 * power)  
# end

# def square(n)
#   multiply(n, n)
# end

# puts square(5) 
# puts square(-8)

# def xor?(param1, param2)
#   if (param1 == true && param2 == true) || (param1 == false && param2 == false)
#     false
#   else
#     true      
#   end
# end

# puts xor?(5.even?, 4.even?)
# puts xor?(5.odd?, 4.odd?)
# puts xor?(5.odd?, 4.even?)
# puts xor?(5.even?, 4.odd?)

# def oddities(arr)
#   new_arr = []
#   counter = 0
#   loop do
#     new_arr << arr[counter]
#     counter += 2
#     break if counter >= arr.length
#   end
#   new_arr
# end

# def oddities(arr)
#   arr.select! do |x|
#     arr.index(x).even?
#   end
#   arr
# end

# p oddities([2, 3, 4, 5, 6])
# p oddities(['abc', 'def'])
# p oddities([123])
# p oddities([])

# def palindrome?(string)
#   string == string.reverse 
# end

# p palindrome?('madam')
# p palindrome?('Madam')
# p palindrome?("madam i'm adam")
# p palindrome?('356653')

# def reverse_array(arr)
#   arr == arr.reverse 
# end

# p reverse_array([1, 2, 1])
# p reverse_array([1, 2, 3])
# p reverse_array("HiH")

# def real_palindrome?(string)
#   string.downcase!
#   string == string.reverse 
# end

# p real_palindrome?('Madam')
# p real_palindrome?("Madam, I'm Adam")
# p real_palindrome?('123ab321')

# def palindromic_number?(num)
#   numbers_array = num.to_s
#   numbers_array.reverse == numbers_array
# end

# p palindromic_number?(0034543)
# p palindromic_number?(123210)
# p palindromic_number?(22)
# p palindromic_number?(5)

# def short_long_short(string1, string2)
#   if string1.length < string2.length
#     string1 + string2 + string1
#   else
#     string2 + string1 + string2
#   end
# end

# p short_long_short('abc', 'defgh')
# p short_long_short('abcde', 'fgh')
# p short_long_short('', 'xyz')

# def century(year)
#   year_array = year.to_s.split("").map(&:to_i)
#   if year_array.length >= 4
#     if year_array.last == 0
#       this_year = year_array[0..1].join("").to_i
#       "#{this_year}th"
#     else
#       this_year = year_array[0..1].join("").to_i + 1
#       "#{this_year}st"

#     end
#   end
# end

# p century(2000)
# p century(2001)

# def leap_year?(year)
#   if ((year % 4 == 0
#     true    
#   end
# end

# p leap_year?(2016)
# p leap_year?(2015)
# p leap_year?(2100)
# p leap_year?(2400)

# def multisum(number)
#   range = (1..number).to_a
#   range.select! do |x|
#     x % 3 == 0 || x % 5 == 0
#   end
#   #range.inject {|sum, n| sum + n }
#   range.reduce(:+)
# end

# p multisum(3)
# p multisum(5)
# p multisum(10)
# p multisum(1000)

# def running_total(arr) # write a. times do method later which takes the length of the array, shift and adds it to the end.
#   sum = 0
#   new_arr = []
#   loop do
#     break if arr.first == nil
#     sum += arr.shift
#     new_arr << sum
#     break if arr.empty?
#   end
#   new_arr
# end

# def running_total(arr)
#   sum = 0
#   arr.length.times do
#     sum += arr.shift
#     arr << sum
#   end
#   arr  
# end

# p running_total([2, 5, 13])
# p running_total([14, 11, 7, 15, 20])
# p running_total([3])
# p running_total([])

NUMBERS_HASH = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9}

# def string_to_integer(string)
#   string_array = string.split("")
#   counter = 0 
#   integer_array = []
#   string_array.length.times do    
#     number = NUMBERS_HASH[string_array[counter]]
#     integer_array << number
#     counter += 1
#   end
#   integer_array[0] + integer_array[1]
# end

# def string_to_integer(string)
#   digits = string.chars.map { |char| NUMBERS_HASH[char]}
#   p digits
#   value = 0
#   digits.each { |digit| value = 10 * value + digit} # 10 * 0 + 4 4, 4 = 10 * 4 + 3 v= 43, 43 = 10 * 43 + 2
#   value
  
# end

# p string_to_integer('4321')

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, "-" => -,
#   "+" => +,
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
#   p digits
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# p string_to_integer('4321')
# p string_to_integer('-570')

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end
# p integer_to_string(4321)

# def ascii_value(string)
#   # string[1].ord
#   value = 0
#   string.each_char do |x|
#     value += x.ord
#   end
#   value
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

# def time_of_day(minutes)
#   midnight = [0, 0, 0, 0]
#   if minutes < 10
#     p midnight[3] += minutes 
#   end
#   midnight.insert(2, ":")
#   midnight.join("")
# end

# def time_of_day(minutes)
#   midnight = [0, 0, ":", 0, 0]

#   time = 0
#   if minutes < 60 && minutes > 0
#     time += minutes
#   elsif minutes > 60 && minutes < 1440
#     hour = minutes / 60
#     time += hour * 100
#     mins = minutes % 60
#     time += mins
#     time = time.to_s.insert(0, "0") if time < 960
#     return time.to_s.insert(2, ":")
#   elsif minutes > 2880
#     minutes -= 2880
#     hour = minutes / 60
#     time += hour * 100
#     mins = minutes % 60
#     p time += mins
#     p time = time.to_s.insert(0, "0") if time < 960
#     return time.to_s.insert(2, ":")
#   elsif minutes < 0 && minutes > -60
#     times = 2400
#     time -= minutes
#     p time
#   end
  
#   if time < 10   
#     midnight[4]= time
#     midnight
#     return midnight.join
#   end

#   if time < 60 && time > 10
#     midnight[3] = time
#     midnight.pop  
#     midnight.join  
#   end
 
# end

# # # p time_of_day(8)# works
# # # p time_of_day(35)# works
# # # p time_of_day(800)# works
# # # p time_of_day(599) #  works
# # # p time_of_day(120) # works
# # p time_of_day(3000) # works
# p time_of_day(-3) 

# def after_midnight(time)
#   time.delete!":"
#   if time.to_i == 0 || time.to_i == 2400
#     total_minutes = 0
#   else
#     hours_in_minutes = time[0..1].to_i * 60
#     minutes = time[2..3].to_i
#     total_minutes = hours_in_minutes + minutes
#   end
# end

# p after_midnight('00:00')
# p after_midnight('12:34')
# p after_midnight('24:00')

# def before_midnight(time)
#   time.delete!":"
#   if time.to_i == 0 || time.to_i == 2400
#     total_minutes = 0
#   else
#     p hours_in_minutes = (23 - time[0..1].to_i) * 60 
#     p minutes = 60 - time[2..3].to_i
#     total_minutes = hours_in_minutes + minutes
#   end
# end

# p before_midnight('21:28')
# 1166 # 36 minuten

# def after_midnight(time_str)
#   p hours, minutes = time_str.split(':').map(&:to_i)
#   # (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# after_midnight('12:34')

# def swap(string)
#   string_array = []
#   split_words = []
#   result = []
#   string_array = string.split(" ")
#   string_array.each do |x|
#     split_words = x.split("")

#     last_letter = split_words.pop
#     first_letter = split_words.shift

#     split_words << first_letter
#     split_words.unshift(last_letter)

#     result << split_words.join("")
#   end
#   result
# end


# p swap('Oh what a wonderful day it is')
# p swap('Abcde')
# p swap('a')

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end
# p swap_first_last_characters('Abcde')
# p swap_first_last_characters('Oh what a wonderful day it is')

# def cleanup(string)
#   alphabet = ("a".."z")
#   string_array = string.split("")
#   string_array.map! do |char|
#     if alphabet.include?(char)
#       char
#     else
#       " "
#     end
#   end

#   string_array.delete("  ")
#   p string = string_array.join("")
#   p string.gsub("  ", "")
# end

# p cleanup("---what's my +*& line?") == ' what s my line '

# RESULT_HASH = {
#   1 => 0,
#   2 => 0,
#   3 => 0,
#   4 => 0,
#   5 => 0,
#   6 => 0,
#   7 => 0,
#   8 => 0,
#   9 => 0
# }



# def word_sizes(string)
#   string.split(" ").each do |word|
#     RESULT_HASH[word.length] += 1
    
#   end
#   RESULT_HASH.select do |k, v|
#     v > 0
#   end
# end

# # p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# #p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# # p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

# def word_sizes(words_string)
#   counts = Hash.new(0)

#   words_string.split.each do |word|
#     word.delete!('^A-Za-z')
#     counts[word.size] += 1
#   end
#   counts
# end

# p word_sizes('Four score and seven.')
# p word_sizes('Hey diddle diddle, the cat and the fiddle!')

# NUMBERS_WORDS = {
#   1 => "one",
#   2 => "two",
#   3 => "three",
#   4 => "four",
#   5 => "five",
#   6 => "six",
#   7 => "seven",
#   8 => "eight",
#   9 => "nine",
#   10 => "ten",
#   11 => "eleven",
#   12 => "twelve",
#   13 => "thirteen",
#   14 => "fourteen",
#   15 => "fifteen",
#   16 => "sixteen",
#   17 => "seventeen",
#   18 => "eighteen",
#   19 => "nineteen"
# }

# # p Hash[NUMBERS_WORDS.sort]
# # NUMBERS_WORDS.values.sort
# a = [1, 2, 3, 4, 5]
# counter = 0
# NUMBERS_WORDS.select! do |k, v|

#   k.include?("1")

#   end

#   p NUMBERS_WORDS 

# numbers_words = ["zero", "one", "two", "three", "four", "five",
#  "six", "seven", "eight", "nine", "ten", "eleven", "twelve",
#  "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
# "nineteen"]

# p numbers_words[1]

# def alphabetic_number_sort(numbers)
  
#   # numbers.each do |x|
#   #   p NUMBERS_WORDS[x]
#   # end
#   # NUMBERS_WORDS.select do |k, v|
#   #   k == 1..2.each
#   # end
#   result = []
#   numbers.each do |x|
#     result = NUMBERS_WORDS.select do |k, v|
#       k == x
#     end
#     p result.merge(result)
#   end
  
#   # result = NUMBERS_WORDS.select do |k, v|
#   #   numbers.each do |x|
#   #     k == v
#   #   end
#   # end
#   # p result

# end

# alphabetic_number_sort((1..5).to_a)

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end

# p alphabetic_number_sort((0..19).to_a)

# def crunch(string)
#   string_array = string.split("")
#   result = []
#   loop do
    
#     result << string_array.shift
#     if result.last == string_array.first then string_array.delete_at(0) end
#     break if string_array.empty?
#   end
#   result.join("")
# end

# # def crunch(text)
# #   index = 0
# #   crunch_text = ''
# #   while index <= text.length - 1
# #     crunch_text << text[index] unless text[index] == text[index + 1]
# #     index += 1
# #   end
# #   crunch_text
# # end


# p crunch('ddaaiillyy ddoojjjuubbllee')
# # p crunch('4444abca bccba')
# p crunch('ggggggggggggggg')
# # p crunch('a')
# # p crunch('')

# def print_in_box(string)
#   puts "+ " + "-" * string.length  + " + "
#   puts "| " + " " * string.length + " |"
#   puts "| " + "#{string}" + " |"
#   puts "| " + " " * string.length + " |"
#   puts "+ " + "-" * string.length + " + "
#   string.length
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box("")

# def dms(angle)
#   deg = angle.floor
#   min = ((angle - deg) * 60).floor
#   sec = (angle - deg - min/60) * 3600
#   puts "#{deg}°#{min}'#{sec}'"
# end

# #dms(76.73)
# dms(40.305)

# def remove_vowels(string)
#   p string.join(" ").delete("aAeEiIoOuU").split(" ")
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ))

# def reverse_it(arr)
#   counter = 0
#   until counter == arr.size
#     arr.insert(counter, arr.pop)
#     counter += 1
#   end
#   arr
# end

# def reverse_it(arr)
#   result = []
#   while arr.length > 0
#     result << arr.pop
#   end
#   result
  
# end

# p reverse_it([1,2,3,4])
# p reverse_it(%w(a b c d e))
# p reverse_it([])

# def merge(array1, array2)
#   (array1 + array2).uniq
# end

# p merge([1, 3, 5], [3, 6, 9])

# def halvsies(arr)
#   half = 0.0
#   p half = arr.length.to_f / 2
  
#   result = []
#   arr_new = arr.slice!(half.ceil..arr.length)
#   result << arr
#   result << arr_new
#   result
# end

# p halvsies([1, 2, 3, 4])
# p halvsies([1, 5, 2, 4, 3])
# p halvsies([5])
# p halvsies([])

# def find_dup(arr)
#   duplicate = 0
#   arr.each do |x|
#     if arr.count(x) > 1
#       duplicate = x
#     end 
#   end
#   duplicate
# end

# #p find_dup([1, 3, 1, 5])
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58])

# def include?(arr, search_value)
#   counter = 0
#   arr.each do |x|
#     if x == search_value
#       counter += 1
#     end
#   end
#   # if counter > 0
#   #   true
#   # else
#   #   false
#   # end
#   counter > 0 ? true : false
# end

# p include?([1,2,3,4,5], 3) 
# p include?([1,2,3,4,5], 6)
# p include?([], 3)
# p include?([nil], nil)
# p include?([], nil)

# def triangle(num)
#   counter = 1
#   loop do 
#     space = num - counter
#     line = (" " * space) + ("*" * counter)
#     puts line
#     counter += 1
#     break if counter > num
#   end
# end

# triangle(5)
# triangle(39)

# def interleave(array1, array2)
#   result = []
#   loop do
#     result << array1.shift << array2.shift    
#     break if array2.empty?
#   end
#   result
# end

# def interleave(array1, array2)
#   array1.zip(array2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

# def letter_case_count(string)
#   result = { 
#     lowercase: 0,
#     uppercase: 0,
#     neither: 0}
#   result[:lowercase] = string.count("a-z")
#   result[:uppercase] = string.count("A-Z")

#   result[:neither] = string.count("^a-z", "^A-Z")
#   result
# end

# p letter_case_count('abCdef 123')
# p letter_case_count('AbCd +Ef')
# p letter_case_count('123')
# p letter_case_count('')

# def word_cap(string)
#   string_array = string.split(" ")
#   string_array.map! do |x|
#     x.capitalize
#   end
#   string_array.join(" ")
# end

# p word_cap('four score and seven')
# p word_cap('the javaScript language')
# p word_cap('this is a "quoted" word')

# def swapcase(string)
#   string_array = string.split("")
#   string_array.map! do |char|
#     if char == char.downcase
#       char.upcase
#     elsif char == char.upcase
#       char.downcase        
#     end
#   end
#   string_array.join("")
# end

# p swapcase('CamelCase')
# p swapcase('Tonight on XYZ-TV')

# def staggered_case(string)
#   string_array = string.split("")
#   string_array.map!.with_index do |item, index|

#     if index.even?
#       item.upcase
#     else
#       item.downcase
#     end
#   end 
#   string_array.join("")  
# end

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     # if char.include?(/\W/.to_s)
#     #   char.next
#     # end
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     if char.include?(/\w/.to_s)
#       next
#     else
#       need_upper = !need_upper
#     end
    
#   end
#   result
# end


# p staggered_case('I Love Launch School!') 
# p staggered_case('ALL_CAPS')
# p staggered_case('ignore 77 the 444 numbers')

# def show_multiplicative_average(arr)
#   result = 1.00
#   arr.each do |x|
#     result *= x
#   end
#   result = result / arr.length
# end

# p show_multiplicative_average([3, 5])
# p show_multiplicative_average([2, 5, 7, 11, 13, 17])

# def multiply_list(array1, array2)
#   counter = -1
#   result = []
#   array1.map! do |x|
#     counter += 1
#     result << x * array2[counter]
#   end
  
#   result
# end

# p multiply_list([3, 5, 7], [9, 10, 11])


# def multiply_all_pairs(array1, array2)  
#   result = []
#   array1.each do |item_1| 
#     array2.each do |x|
#       result << item_1 * x      
#     end
#   end
#   result.sort  
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2])

# def penultimate(string)
#   string_array = string.split(" ")
#   string_array[-2]
# end

# p penultimate('last word')
# p penultimate('Launch School is great!')

# def sum_of_sums(arr)
#   result = 0
#   loop do
#     result += arr.reduce(:+)
#     arr.pop
#     break if arr.empty?
#   end
#   result
# end

# p sum_of_sums([3, 5, 2])
# p sum_of_sums([1, 5, 7, 3])
# p sum_of_sums([4])
# p sum_of_sums([1, 2, 3, 4, 5])

# print "Enter a noun: "
# noun = gets.chomp

# print "Enter a verb: "
# verb = gets.chomp

# print "Enter a adjective: "
# adj = gets.chomp

# print "Enter a adverb: "
# adv = gets.chomp

# puts "Do you #{verb} your #{adj} #{noun} #{adv}? Thats funny!"

# def substrings_at_start(string)
#   string_array = string.split("")
#   result = []
#   temp_result = []
#   counter = 0
    
#   loop do
#     result << string[0..counter]
#     # temp_result << string_array[0..counter]

#     # result << temp_result[counter].join
#     counter += 1
#     break if counter == string.length    
#   end
#   result  
# end

# def substrings(string)
#   result = []
#   counter = 0
  
#   string.size.times do 
#     0.upto(string.size - 1) do |index|
#       result << string[counter..index]
#     end
#     counter += 1
#     result.delete("")
#   end  
#   result
# end

# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end

# p substrings('abcde')

# def palindromes(string)
#   p all_substrings = substrings(string)
  
# end

# p palindromes('madam')

# def fizzbuzz(num1, num2)
#   range = (num1..num2)

#   result = range.map do |num|
#     if num % 3 == 0 && num % 5 == 0
#       "FizzBuzz"
#     elsif num % 3 == 0
#       "Fizz"
#     elsif num % 5 == 0
#       "Buzz"
#     else
#       num
#     end
#   end
#   p result.join(", ")
  
# end

# fizzbuzz(1, 15)

# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def repeater(string)
#   result = ""
#   string.each_char do |char|
#     if CONSONANTS.include?(char.downcase)
#       result += char * 2
#     else
#       result +=  char
#     end
   
#   end
#   result
# end

# p repeater('Hello')
# p repeater("Good job!")
# p repeater('')

# def reversed_number(num)
#   # num.to_s.reverse.to_i
#   digits = num.to_s.chars.reverse.join.to_i
# end

# p reversed_number(12345)
# p reversed_number(12213)
# p reversed_number(456)
# p reversed_number(12000)
# p reversed_number(1)

# def center_of(string)
#   string.length / 2
#   if string.length.odd?
#     string[string.length / 2]
#   else
#     string[(string.length / 2) - 1] + string[string.length / 2]
#   end
  
# end

# p center_of('I love ruby')
# p center_of('Launch School')
# p center_of('Launch') # length = 3, result shoud be "un"
# p center_of('Launchschool') # lenth = 12 result should be
# p center_of('x')

# def greetings(array, hsh)

#   greeting = "Hello, #{array.join(" ")}! "
#   occupation = "Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
#   greeting + occupation
# end

# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# # => Hello, John Q Doe! Nice to have a Master Plumber around.

# def twice(num) 
#   first_part = num.to_s[0...num.to_s.length / 2]
#   second_part = num.to_s[num.to_s.length / 2..num.to_s.length]
  
#   if first_part == second_part
#     num
#   else
#     num * 2
#   end
# end

# p twice(103103)
# p twice(44)
# p twice(7676)
# p twice(123_456_789_123_456_789)
# p twice(107)
# p twice(334433)
# p twice(37)
# p twice(5)

# def negative(number)
#   if number > 0
#     number - (number * 2)
#   elsif number == 0
#       "There's no such thing as -0 in ruby"
#   else
#     number
#   end
# end

# def negative(number)
#   numbers_array = []
#   if number > 0
#     numbers_array << number
#     numbers_array.unshift("-")
#     numbers_array.join("").to_i
#   elsif number == 0
#       "There's no such thing as -0 in ruby"
#   else
#     number
#   end
# end

# p negative(5)
# p negative(-3)
# p negative(0)

# def sequence(number)
#   result = []
#   if number > 0
#     1.upto(number) do |i|
#       result << i
#     end
#   else
#     1.downto(number) do |i|
#       result << i
#     end
#   end
#   p result
# end

# sequence(5)
# sequence(3)
# sequence(-2)

# def uppercase?(words)
#   words_array = words.split(" ")
#   words_array.each do |i|
#     if i != i.upcase
#       return false      
#     end    
#   end
#   true
# end
# p uppercase?('t')
# p uppercase?('T')
# p uppercase?('FOUR SCORE')
# p uppercase?('4SCORE!')
# p uppercase?('')

# def word_lengths(arr)
#   words_array = arr.split(" ")  
#   temp = []
#   result = []
#   words_array.length.times do
#     temp = words_array.shift
#     result << temp + " " + temp.length.to_s
#   end
#   result
# end

# p word_lengths("cow sheep chicken")
# p word_lengths("baseball hot dogs and apple pie")
# p word_lengths("Supercalifragilisticexpialidocious")
# p word_lengths("")

# def swap_name(string)
#   p string.split(" ").reverse.join(", ")
# end

# swap_name('Joe Roberts')

# def sequence(num1, num2)
#   result = []
#   counter = num2
  
#   num1.times do |x|
#     result << num2
#     num2 += counter    
#   end  
#   result
# end

# p sequence(5, 1)
# p sequence(3, 0)
# p sequence(4, -7)
# p sequence(0, 1000000)

# def get_grade(num1, num2, num3)
#   average = (num1 + num2 + num3) / 3
#   if average.between?(90, 100)
#     "A"
#   elsif average.between?(80, 90)
#     "B"
#   elsif average.between?(70, 80)
#     "C"
#   elsif average.between?(60, 70)
#     "D"
#   elsif average < 60
#     "F"    
#   end
# end

# p get_grade(95, 90, 93)
# p get_grade(50, 50, 95) 

# def buy_fruit(arr)
#   result = []
#   arr.each do |x|
#     x.last.times do
#       result << x.first
#     end
#   end
#   result 
# end

# p buy_fruit([["apples", 3], ["orange", 7], ["bananas", 3]])

# def rotate_array(array)
  
#   array[1..-1] + [array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1])
# p rotate_array(['a', 'b', 'c'])
# p rotate_array(['a']) 

# def rotate_rightmost_digits(digits, counter)
#   digits_array = digits.to_s.split("")
#   var = digits_array.slice!(-counter)
#   digits_array << var
#   # first_part = digits_array[0...-counter]
#   # second_part = digits_array[-counter + 1..-1]  
#   # first_part + second_part + [digits_array[-counter]]
  
# end

# p rotate_rightmost_digits(735291, 3) # == 735912
# p rotate_rightmost_digits(735291, 1)
# p rotate_rightmost_digits(735291, 5)

# def max_rotation(digits)

#   digits = digits.to_s.chars
#   p num = digits.length
#   result = []
#   # p digits

#   # digits[1..-1] + [digits[0]]
#   10.times do
#     result = rotate_array(digits)
#   end
#   result
# end

# p max_rotation(735291) # 321579

# DIGITS = {
#   "one" => "1",
#   "two" => "2",
#   "three" => "3",
#   "four" => "4",
#   "five" => "5",
#   "six" => "6",
#   "seven" => "7",
#   "eight" => "8",
#   "nine" => "9"
# }

# def word_to_digit(string)
#   p string.delete!(".")
#   p string_array = string.split(" ")

#   string_array.map! do |word|

#     if DIGITS.include?(word)
#       DIGITS[word]
#     else
#       word
#     end
#   end
#   string_array.join(" ")
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.')




# def minilang(input)
#   register = 0
#   stack = []
#   string_array = input.split(" ")

#   string_array.each do |v|
#     if v == "PUSH"
#       stack << register 
      
#     elsif v.to_i != 0
#       register = v.to_i

#     elsif v == "ADD"
#       register = register + stack.pop

#     elsif v == "POP"
#       register = stack.pop    

#     elsif v == "MULT"         
#       register = register * stack.pop

#     elsif v == "DIV"
#       register = register / stack.pop

#     elsif v == "MOD"
#       register = register % stack.pop

#     elsif v == "SUB"
#       register = register - stack.pop        

#     elsif v == "PRINT"
#       puts "Print method call: The register value is #{register}."  

#     end
#   end  
# end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # minilang('-3 PUSH 5 SUB PRINT')
# minilang('6 PUSH')

# def diamond(num)
#   numbers_array = (1..num).to_a

#   numbers_array.to_a.each do |x|
#     if x.odd?
#       counter = (9 - x / 2) 
#       puts (" " * counter) + "*" * x
#     end
#   end

#   numbers_array.reverse!.shift

#   numbers_array.to_a.each do |x|
#     if x.odd?
#       counter = (9 - x / 2) 
#       puts (" " * counter) + "*" * x
#     end
#   end

# end

# diamond(15)

# WORDBLOCKS = [["b", "o"], ["x", "k"], ["c", "p"],
#               ["n", "a"], ["g", "t"], ["r", "e"],
#               ["f", "s"], ["j", "w"], ["h", "u"], 
#               ["v", "i"], ["l", "y"], ["z", "m"]]

# # p WORDBLOCKS.to_s["t"]
# #p WORDBLOCKS.delete_at(WORDBLOCKS["t"])
# def block_word?(word)
#   result = []
#   string_array = word.downcase.chars
#   string_array.each do |x|
#     WORDBLOCKS.each_with_index do |v, i|
#       if v.include?(x)
        
#         result << v
        
#       end
#     end
#   end
  
#   if result == result.uniq
#     true
#   else
#     false
#   end
# end

# p block_word?('BATCH')
# p block_word?('BUTCH')
# p block_word?('jest')
# p block_word?('bxcngrfjhvlz')

# def letter_percentages(string)
#   percentages_hash = {
#     :lowercase => 0,
#     :uppercase => 0,
#     :neither => 0
#   }
  
  
#   percentages_hash[:lowercase] = (string.count("a-z").to_f / string.length) * 100
#   percentages_hash[:uppercase] = (string.count("A-Z").to_f / string.length) * 100
#   percentages_hash[:neither] = 100 - (percentages_hash[:lowercase] + percentages_hash[:uppercase])
  
#   percentages_hash
# end

# p letter_percentages('abCdef 123')
# p letter_percentages('AbCd +Ef')
# p letter_percentages('123')

# def balanced?(string)
#   p string_array = string.split("")
#   if string.count("(") != string.count(")")
#     return false
#   end

#   counter = 0
#   string_array.each do |x|
#     if x == ")"
#       counter -= 1
#     elsif x == "("
#       counter += 1
#     end
#     return false if counter < 0
#   end
#   true
# end

# p balanced?('What (is) this?')
# p balanced?('What is) this?')
# p balanced?('What (is this?')
# p balanced?('((What) (is this))?')
# p balanced?('((What)) (is this))?')
# p balanced?('Hey!')
# p balanced?(')Hey!(')
# p balanced?('What ((is))) up(')


# equilateral, done
# isosceles, 
# scalene = done
# def triangle(num1, num2, num3)
#   p numbers_array = [num1, num2, num3]

#   if numbers_array.include?(0)
#     return :invalid
#   end

#   if num1 == num2 && num1 == num3
#     return :equilateral
#   end

#   if numbers_array.uniq.length == 3
#     return :scalene
#   end

#   p two_smallest = [] 
#   two_smallest = numbers_array.min(2)
#   p two_smallest
#   if condition
    
#   end

# end

# p triangle(3, 3, 4)

# def triangle(num1, num2, num3)
#   numbers_array = [num1, num2, num3]

#   if numbers_array.include?(0)
#     return :invalid
#   elsif numbers_array.reduce(:+) != 180
#     return :invalid    
#   end

#   if numbers_array.include?(90)
#     return :right
#   end

#   if num1 < 90 && num2 < 90 && num3 < 90
#     return :acute
#   end

#   if num1 > 90 || num2 > 90 || num3 > 90
#     return :obtuse
#   end
# end

# p triangle(10, 120, 50)

# def friday_13th?(year)
#   month = 1
#   friday_counter = 0 
  
#   loop do
#     break if month == 13
#     time_var = Time.new(year, month, 13)

#     if time_var.friday?
#       friday_counter += 1
#     end

#     month += 1
#   end

#   p friday_counter
# end

# friday_13th?(2017)
# # friday_13th?(1986)

# def say_hello
#   "hello"
# end

# def is_it_featured?(num1)
#   if num1 % 7 != 0 || num1.even?
#     return false
#   end

#   p numbers_array = num1.to_s.split("")
#   if numbers_array.length == numbers_array.uniq.length
#     return true
#   else
#     false
#   end

# end

# #p is_it_featured?(23)

# def featured(num)

#   featured_number = 0  

#   loop do
#     featured_number += 7
#     break if featured_number > num && is_it_featured?(featured_number)
#   end
#   featured_number
# end

# p featured(999_999_987)

# def bubble_sort!(array)
  
#   counter = 0

#   loop do
#     if array[counter] > array[counter + 1]
#       array[counter.. counter + 1] = array[counter..counter + 1].reverse
#     end

#     counter += 1

#     if counter == array.length - 1
#       counter = 0
#     end

#     break if array == array.sort

#     p array
#   end
#   p array
 

  
# end

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)

# def sum_square_difference(num)
#   numbers_array = (1..num).to_a
#   sum = numbers_array.reduce(:+) ** 2

#   square = 0
#   numbers_array.each do |x|
#     square += x**2
#   end
  
#   p result = sum - square
# end

# p sum_square_difference(100)

# def star(num)
#   counter = (num - 3) / 2
#   space = 1
#   loop do
#     puts " " * space + "*" + " " * counter + "*" + " " * counter + "*"
#     puts ""
#     counter -= 1
#     space += 1
#     break if counter < 0
#   end

#   puts " " + "*" * num
#   puts ""

#   counter = 0
#   space = num / 2
#   loop do 
#     puts " " * space + "*" + " " * counter + "*" + " " * counter + "*"
#     puts ""
#     counter += 1
#     space -= 1
#     break if counter > (num - 3) / 2
#   end

# end

# star(19)

# matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# def transpose(arr)
  
#   new_matrix =[[], [], []]
#   arr.each do |x|
#     new_matrix[0] << x[0]
#     new_matrix[1] << x[1]
#     new_matrix[2] << x[2]
#   end
#   new_matrix
# end

# new_matrix = transpose(matrix)

# p new_matrix

# def transpose(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map {|row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# p transpose([[1, 2, 3, 4]])

# def permutations(arr)
#   p possible_solutions = (1..arr.size).inject(:*)
#   result = []

#   loop do
#     temp = arr.shuffle
#     unless result.include?(temp)
#       result << temp
#     end
#     break if result.uniq.length == possible_solutions
#   end
#   result
# end

# p permutations([1, 2, 3, 4])

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.length > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end
# # The bug was there was not a condition for the elsif statement,
# # that means that the programm did not know what to do 
# #   if the array was not empty.
# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

# def merge(arr1, arr2)
#   sum_array = arr1 + arr2
#   result = []
#   loop do 
#     temp = sum_array.min
#     sum_array.delete_at(sum_array.index(temp))
#     result << temp
#     break if sum_array.empty?
#   end
#   p result  
# end

# merge([1, 5, 9], [2, 6, 8])
# merge([1, 1, 3], [2, 2])
# merge([], [1, 4, 5])
# merge([1, 4, 5], [])

# def prime?(num)

#   return false if num == 1

#   (2...num).each do |x|
#     if num % x == 0 
#       #puts x
#       return false   
#     end
#   end
#   true
# end

# def select_primes(arr)
#   arr.select! do |x|
#     prime?(x)
#   end
#   arr.count
# end

# p select_primes([1, 2, 3, 4])

# puts "Please enter an integer greater than 0:"
# num = gets.chomp

# puts "Enter 's' to computer the sum, 'p' to computer the product."
# operation = gets.chomp

# def sum_or_prod(num, choice)
#   numbers_array = (1..num.to_i).to_a
#   if choice.downcase == "s"
#     numbers_array.reduce(:+)
#   else
#     numbers_array.reduce(:*)
#   end
# end

# p sum_or_prod(num, operation)

# def interleave(arr1, arr2)
#   counter = 0
#   result = []
#   loop do
#     result << arr1[counter] 
#     result << arr2[counter]
#     counter += 1
#     break if counter == (arr1.length + arr2.length) / 2
#   end
#   result
# end

# p interleave([1, 2, 3], ["a", "b", "c"])

# def substring(string, start, finish=start)
#   string[start..finish]
# end

# p substring("honey", 0, 2)

# def substrings(string)
 
#   result = []
#   counter_1 = 0
#   counter_2 = 1

#   loop do 
#     result << string[counter_1..counter_2]

#     counter_2 += 1

#     if counter_2 == string.length
#       counter_1 += 1
#       counter_2 = counter_1 + 1
#     end

#     break if counter_2 == string.length
#   end

#   # result.select! do |x|
#   #   x == x.reverse
#   # end


#   result
# end

# def palindromes(string)
#   result = substrings(string)

#   result.select! do |x|
#     x == x.reverse
#   end
  
#   result
# end

# def longest_palindrome(string)
  
#   result = palindromes(string)[0]

#   palindromes(string).each do |x|
#     if x.length > result.length
#       result = x
#     end
#   end

  
#   result
# end

# p longest_palindrome("ppop")

# STRINGNUMBERS = {
#   "zero" => 0,
#   "one" => 1,
#   "two" => 2,
#   "three" => 3,
#   "four" => 4,
#   "five" => 5,
#   "six" => 6,
#   "seven" => 7,
#   "eight" => 8,
#   "nine" => 9,
#   "ten" => 10
# }


  

  
# def compute(string)
#   result = 0
#   operation = ""
#   string_array = string.split(" ")

#   if string_array.include?("plus")
#     string_array.delete("plus")
#     operation = "plus"
#   elsif string_array.include?("minus")
#     string_array.delete("minus")
#     operation = "minus"
#   end

#   string_array.map! do |x|
#     if STRINGNUMBERS.has_key?(x) 
#       STRINGNUMBERS[x]
#     elsif STRINGNUMBERS.has_value?(x.to_i)
#       x.to_i
#     else
#       x
#     end
#   end 

#   if operation == "plus"
#     result = string_array.reduce(:+)
#   elsif operation == "minus"    
#     result = string_array.reduce(:-)
#   end

#   result

# end

# p compute("two plus two minus three")

# def convert(x)
#   if STRINGNUMBERS.has_key?(x) 
#       STRINGNUMBERS[x]
#   elsif STRINGNUMBERS.has_value?(x.to_i)
#       x.to_i  
#   end
    
# end



# def compute(string)
#   string_array = string.split(" ")
#   result = STRINGNUMBERS[string_array.shift]
#   string_array.each_with_index do |v, i|
#     if v == "minus"
#       result -= convert(string_array[i + 1])
#     elsif v == "plus"
#       result += convert(string_array[i + 1])
#     elsif v == "times"
#       result *= convert(string_array[i + 1])
#     elsif v == "divided"
#       result /= convert(string_array[i + 2])
                    
#     end
#   end
#   result
# end

# p compute("eight plus two divided by two")
#p compute("eight times four plus six divided by two minus two")
# p compute("nine divided by three times six")


# def friday_13th?(year)
#   month = 1
#   friday_counter = 0 
  
#   loop do
#     break if month == 13
#     time_var = Time.new(year, month, 13)

#     if time_var.friday?
#       friday_counter += 1
#     end

#     month += 1
#   end

#   p friday_counter
# end

# friday_13th?(2015)
# friday_13th?(1986)


# def word_cap(string)
#   string_array = string.split(" ")
#   string_array.map! do |x|
#     x.capitalize
#   end
#   string_array.join(" ")
# end

# p word_cap("the javaScript language")


# NUMBERS = %w(zero one two three four five six seven eight nine ten)
# OPERATORS = %w(plus minus times divided)

# def mathphrase(number)
#   result = []
#   result << NUMBERS[rand(0...NUMBERS.length)]

#   number.times do
#     result << OPERATORS[rand(0...OPERATORS.length)]
#     result << NUMBERS[rand(0...NUMBERS.length)]
#   end
#   result.each_with_index do |v, i|
#     if v == "divided"
#       result.insert(i + 1, "by")
#     else
#       v
#     end
#   end
#   result.join(" ")

# end
# 10.times do
#   p mathphrase(rand(20))
# end

# LETTERVALUES = {
#   "a" => 1,
#   "b" => 3,
#   "c" => 3,
#   "d" => 2,
#   "e" => 1,
#   "f" => 4,
#   "g" => 2,
#   "h" => 4,
#   "i" => 1,
#   "j" => 8,
#   "k" => 5,
#   "l" => 1,
#   "m" => 3,
#   "n" => 1,
#   "o" => 1,
#   "p" => 3,
#   "q" => 10,
#   "r" => 1,
#   "s" => 1,
#   "t" => 1,
#   "y" => 4,
#   "x" => 8,
#   "z" => 10
# }



# def score(string)
#   # letter_array = [[], ["a", "e", "e", "i", "o", "u", "l", "n", "r", "s", "t"],
#   #                 ["d", "g"], ["b", "c", "m", "p"], ["f", "h", "v", "w", "y"],
#   #                 ["k"], [], [], ["j", "x"], [], ["q", "z"]]

#   # p letter_array[1].index("a")
#   p string_array = string.split("")
#   result = 0
#   string_array.each do |x|
#     result += LETTERVALUES[x]
#   end
#   result
# end

# p score("cabbage")
# p score("adrian")

# def odd_words(string)
#   p last_char = string.chars.pop
#   string.delete!(last_char)
#   p string_array = string.split(" ")
#   result = string_array.each_with_index.map do |v, i|
#     if i.odd?
#       v.reverse
#     else
#       v
#     end
#   end
  
#   p result.join(" ") << last_char
# end

# odd_words("Whats the matter with kansas.")

# def star(num)
#   space = num / 2
#   star = 1
#   loop do
#     puts " " * space + "*" * star
#     space -= 1
#     star += 2
#     break if star > num
#   end
#   space = 1
#   star = num - 2
#   loop do 
#     puts " " * space + "*" * star
#     space += 1
#     star -= 2
#     break if star < 1
#   end
# end

# star(111)

# a = 10

# def make_it_fve
#   a
#   5
  
# end

# a = make_it_fve

# p a

# def assign_name(name ="Bob")
#   name
# end

# p assign_name

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
#   "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flintstones.select! do |k, v|
#   k == "Barney"
# end

# p flintstones.to_a.flatten

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# result = Hash.new
# flintstones.each_with_index do |v, i|
#   result[v] = i
# end

# p result

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.has_key?("Eddie")

# result = 0
# ages = { "Herman" => 32, "Lily" => 30, 
# "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages.each_value do |v|
#   result += v
# end

# p result

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.select! do |k, v|
#   v < 100
# end

# p ages

# munsters_description = "The Munsters are creepy in a good way."

# p a = munsters_description.capitalize
# p b = munsters_description.swapcase
# p c = munsters_description.downcase
# p d = munsters_description.upcase

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# p ages.merge(additional_ages)

# ages = { "Herman" => 32, "Lily" => 30, 
# "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.include?("Dino")

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.find_index("Be")

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! {|x| x[0...3]} 


# p flintstones

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino " << "Test"

# p flintstones

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.slice!(0..38)

# p advice

# space = 0

# 10.times do |i|
#   puts " " * i + "The Flintstones Rock!"
# end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# p munsters["Herman"]["age-group"] = "Test"
# p munsters
# munsters.each do |k ,v|
#   if v["age"].between?(0, 17)
#     munsters[k]["age_group"] = "child"
#   elsif v["age"].between?(18, 64)
#     munsters[k]["age_group"] = "adult"
#   else
#     munsters[k]["age_group"] = "senior"

#   end

# end
# p munsters

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# p munsters["Herman"]["age"]
# age = 0
# munsters.each do |k, v|
  
#   if munsters[k]["gender"] == "male"
#     p k
#     age += munsters[k]["age"]
#   end
# end

# p age

# answer = 42 # 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}" # "pumpkins"
# puts "My array looks like this now: #{my_array}" # 

# loop do
#   str = 2
#   break
# end

# puts str

# str = "hello"
# p str.object_id

# def a_method
#  str = "world"
#  p str.object_id
# end

# a_method
# puts str
# p str.object_id

# a = "hello"
# b = a
# p a.object_id
# p b.object_id
# a = "hi"
# p a.object_id
# p b.object_id
# a << " world"
# p a.object_id
# p b.object_id
# puts a
# puts b

# a = "hello"
# b = "world"

# c = a # "hello"
# d = b # "hello"
# b = a # "hello"
# a = c # hello

# puts a
# puts b
# puts c
# puts d
# p a.object_id
# p b.object_id
# p c.object_id
# p d.object_id

# def change(param)
#   param << " world"
# end
# def change(param)
#   #param += "greeting"
#   param << "hey"
#   #param = "hi"
#   param << " world"
#   #p param
# end

# greeting = "hello"
# change(greeting)

# puts greeting

# a = [1, 2]

# test = a.select do |x|
#   x > 1
# end

# p test

# p [1, 2, 3].map {|n| n + 1}

# p [1, 2, 3, 28].map {|n| n += 1}

# arr = [1, 2, 3].select do |n|
#   n + 2
#   puts n
# end

# p arr

# a = [1, 2, 3, 4]

# def reverse_it(string)
#   string_array = string.chars
#   #arr.reverse
#   last_element = 0
#   counter = 0
#   result = []
#   loop do
#     # last_element = string_array.pop
#     # string_array.insert(counter, last_element)
#     # counter += 1
#     # break if counter == string_array.length
#     result << string_array.pop
#     break if string_array.empty?
#   end
#   #string_array.join
#   result.join
# end

# p reverse_it("hello")



# def fizzbuzz(num1, num2)
#   range_array = (num1..num2).to_a
#   range_array.map! do |x|
#     if x % 5 == 0 && x % 3 == 0
#       "FizzBuzz"
#     elsif x % 5 == 0
#       "Fizz"
#     elsif x % 3 == 0
#       "Buzz"
#     else
#       x
#     end
#   end
#   range_array.join(", ")
# end

# p fizzbuzz(2, 40)

# def is_prime?(num)
#   # is only dividable through itself and 1
#   range_array = (2...num).to_a
#   range_array.each do |x|
#     if num % x == 0
#       return false      
#     end

#   end
#   true
# end

# p is_prime?(1)

# a = [1, 2, 3, 4]
# b = ["john", "jack", "lilly", "nick"]

# def join_two(arr1, arr2)
#   result = []
#   loop do
#     result << arr1.shift
#     result << arr2.shift
#     break if arr2.empty?
#   end  
#   result
# end

# p join_two(a, b)

# VOWELS = %w(a e i o u)


# def remove_vowels(input)
#   p string_array = input.chars
#   string_array.select! do |x|
#     if VOWELS.include?(x)
#       false
#     else
#       true   
#     end
#   end
#   p string_array.join
# end

# remove_vowels( %(green yellow black white))

# def balancer(string)  
#   p string_array = string.chars
#   counter = 0
#   string_array.each do |x|
#     if x == ("(")
#       counter += 1
#     elsif x == (")")
#       counter -= 1      
#     end

#     if counter < 0
#       return false    
#     end
#   end

#   if counter != 0
#     false
#   else
#     true    
#   end
  
#   # if string_array.count("(") != string_array.count(")")
#   #   false
#   # else
#   #   true    
#   # end
# end

# p balancer("()hi")

# def is_prime?(num)
#   # is only dividable through itself and 1
#   range_array = (2...num).to_a
#   range_array.each do |x|
#     if num % x == 0
#       return false      
#     end

#   end
#   true
# end

# def find_primes(num1, num2)
#   p numbers_array = (num1..num2).to_a
#   numbers_array.select! do |x|
#     is_prime?(x)
#   end
# end

# p find_primes(3, 10)

# puts "Please enter an integer greater than 0"
# input = gets.chomp.to_i

# puts "Sum or Product"
# operation = gets.chomp

# def prod_sum(num, op)
#   numbers_array = (1..num).to_a
  
#   if op.downcase == "s"
#     p numbers_array.reduce(:+)
#   elsif op.downcase == "p"
#     p numbers_array.reduce(:*)
    
#   end
# end

# p prod_sum(input, operation)

# def crunch(string)
#   string_array = string.chars
#   string_array.select!.each_with_index do |v, i|
#     if v == string_array[i + 1]
#       false
#     else
#       true
#     end
#   end
#   string_array.join
# end

# p crunch('ddaaiillyy ddoouubbllee')
# p crunch('ggggggggggggggg')
# p crunch('a')

# require "pry"

# def multiply_all_pairs(arr1, arr2)
#    result = []
#    arr2.each do |item1|
#       arr1.each do |item2|
#          result << item1 * item2 
#          binding.pry
#       end
#    end
#    p result.sort
# end


# multiply_all_pairs([2, 4], [4, 3, 1, 2])

# KONS = %w(b c d f g h j k l m n p q r s t v w x y z)
# p KONS

# answer = gets.chomp

# def to_math(input)
#   input.delete!("^a-zA-z 0-9")
#   string_array = input.split(" ")
#   p string_array[-3..-1]
#   if string_array[-2] == "plus"
#     string_array[-3].to_i + string_array[-1].to_i
#   elsif string_array.include?("minus")
#     string_array[-3].to_i - string_array[-1].to_i
#   elsif string_array.include?("divided")
#     string_array[-4].to_i / string_array[-1].to_i
#   elsif string_array.include?("multiplied")
#     string_array[-4].to_i * string_array[-1].to_i
#   end
# end

# p to_math(answer)

# chess_board = 
# [
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"],
#   ["_ _ _ _ _ _ _ _"]
# ]

# chess_board.flatten!
# puts chess_board

# test = [[1, 8], [2]]

# puts test

#puts chess_board

# p chess_board.join

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

# family.each do |k, v|
#   puts "#{k} and #{v}"
# end


# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person.key("Bob")

# File.open("simple_file.txt", "w") do |file|
#   file.write "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."
# end

# file_array = File.readlines("simple_file.txt")

# p period_split = file_array.join(" ").delete("\n").split(".")

# result = [" "]
# puts "--------------"
# puts "Below is the lowest sentence: "
# period_split.each do |x|
#   if x.length > result[0].length
#     result[0] = x
#   end
# end

# p result

# ABC = %w(b o x k d q c p n a g t r e f s j w h u v i l y z m)


# def include_delete(arr, string)
#   if arr.index(string).even?
#     arr.delete_at(arr.index(string) + 1)
#     arr.delete(string)
#   elsif arr.index(string).odd?
#     arr.delete_at(arr.index(string) - 1)
#     arr.delete(string)
#   end
# end

# def block_word?(string)
#   string_array = string.chars
#   string_array.each do |x|
#     if ABC.include?(x.downcase)
#       include_delete(ABC, x.downcase)
#     else
#       return false
#     end
#   end
#   true
# end

# p block_word?('jest')

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# p BLOCKS

# # include_delete(abc, "k")

# # p abc


# LETTERCOUNT = {
#   lowercase: 0,
#   uppercase: 0,
#   neither: 0
# }

# #p LETTERCOUNT

# def letter_percentages(string)
#   p string_array = string.chars
#   string_array.each do |x|
#     if ("a".."z").include?(x)
#       puts x
#       LETTERCOUNT[:lowercase] += 1
#     elsif ("A".."Z").include?(x)
#       LETTERCOUNT[:uppercase] += 1
#     else
#       LETTERCOUNT[:neither] += 1
#     end
#   end
#   LETTERCOUNT.select! do |k, v|
#     k = v / string.length * 100
#   end
#   p LETTERCOUNT
# end

# p letter_percentages('abCdef 123')
# == { lowercase: 50, uppercase: 10, neither: 40 }


# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end


# p rotate_array([7, 3, 5, 2, 9, 1])

p(rand(1..9))
p(rand(1..10))

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
#   p numbers
# end

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

# p reversed_number(12345)

# def stringy(num)
#   result = ""
#   counter = num
#   loop do
#     counter -= 1
#     break if counter < 0
#     result << "1"
    
#     counter -= 1
#     break if counter < 0
#     result << "0"
    
    
#   end
#   p result
# end


# puts stringy(2)

# def swap(string)
#   string_array = string.split("")
#   first_char = string_array.shift
#   last_char = string_array.pop
#   string_array.unshift(last_char)
#   string_array << first_char
#   string_array.join("") 
#   # string[0], string[-1] = string[-1], string[0]
#   # string
# end

# p swap("hello")