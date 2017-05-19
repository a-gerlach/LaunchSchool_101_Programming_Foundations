# a = ["ace", "10", "ace", "test"]
# c = 0
# a.map {|x| 
#   if x.include?("ace")
#     c += 1
#   end}
# p c

# def calculate_values!(cards, user)
#   if cards.start_with?("2", "3", "4", "5", "6", "7", "8", "9")
#     cards.byteslice(0).to_i
#   elsif cards.start_with?("10", "j", "q", "k")
#     10 
#   elsif cards.start_with?("a")
#     11
#   end
# end

# a = ["acedia", "9heart", "jackheart", "acedia", "9heart", "acedia"]
# b = 0
# score = 0

# b = a.map {|x|
#   score = b
#   if x.start_with?("2", "3", "4", "5", "6", "7", "8", "9")
    
#     x.byteslice(0).to_i
    
#   elsif x.start_with?("10", "j", "q", "k")
    
#     10
    
#   elsif score > 10 && x.start_with?("a")
    
#     1
    
            
#   elsif x.start_with?("a")
    
#     11
    
#   end
  
# }

# score = b.last
#def detect_aces_v3(array, score)
#   if score > 21
#     array.keep_if {|x| x.start_with?("a")}
#     array.length * 10
#   else
#     0
#   end  
# end



# puts score

# a = ["acespa", "9heart", "jackheart", "acedia", "9heart", "aceclu", "aceheart"]
c = ["hello"]
b = 0
player_score = 20

def check_for_aces_v4(array, score)
  if score > 21
    if array.include?("acespa")
      array.delete("acespa")
      -10
    elsif array.include?("acedia")
      array.delete("acedia")
      -10
    elsif array.include?("aceclu")
      array.delete("aceclu")
      -10
    elsif array.include?("aceheart")
      array.delete("aceheart")
      -10
    else
      0
    end
  else
    0
  end  
end

p check_for_aces_v4(c, player_score)
