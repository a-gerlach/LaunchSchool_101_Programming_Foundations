=begin 
Q1
This will print out:
1
2
2
3

the uniq method does not mutate the caller.

Q2
! is the bang operator and it can be appended to a mthod in order to mutate
the calle.
The ? sign makes a mehtod ask a boolean question. So include? asks
if a data sets include an elemant and gets return true or false.
1. 1= means is not. We could use this like this: 1 != 2 would
evaluate to true, because 1 and 2 are not the same.
2. dont know
3. allows the mthod tu mutate the caller
4. ask a boolean question
5. dont know
6. dont know
Q3
advice.sub! 'important', 'urgent'
Q4
deleta_at deletes at the index specifid
delete(1) deletes all the item in the parentheses
Q5
Programmatically determine if 42 lies between 10 and 100.
(10..100).include=(42)
Q6
famous_words.prepend("Four score and")
famous_words.insert(0, "Four score and ")
Q8
We can use flintstones.flatten!
=end
# q10
x = {}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones.each_with_index {|k, v| x[k] = v}
puts x