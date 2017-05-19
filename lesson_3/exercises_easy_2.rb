=begin 
 Q1
1. We can use ages.include?("Spot")
2. We can also use ages.has_key?("Spot")
3. Also: ages.member?("Spot")

Q2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
  "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

x = 0
ages.each_value {|v| x = x + v}
puts x


Q3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if {|k, v| v >= 100 }
puts ages

Q4

munsters_description = "The Munsters are creepy in a good way."
# 3. munsters_description.downcase!
# 4. munsters_description.upcase!
# 2. munsters_description.swapcase!
# 1. munsters_description.sub!(/[amioM]/, 'm') 
puts munsters_description.capitalize!

Q5

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

Q6

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
  "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min


Q7

advice = "Few things in life are as 
important as house training your pet dinosaur."
p advice.match("Dino")

Q8

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index {|x| x[0, 2] == "Be"}

Q9
=end
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|x| x[0..2]}
p flintstones