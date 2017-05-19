Here are my notes for studying:

- When you are at a class in the Ruby-Docs, the "::" means it is a class method
  and the "#" means it is an instance method.

- array.size is an alias for array.length

- Example of a method with a default parameter:

  def assign_name(name ="Bob")
    name
  end

  p assign_name # "Bob"

- anything after "return" in a method will not be executed:
  def meal
    return 'Breakfast'
    'Dinner'
  end

  puts meal # "Breakfast"

- 5.times {|x| print x } # this method returns the Integer before times. So in this case 5

- while and until return nil unless provided with a break statements that include a return value (example below).

- .times returns the last value of the enumerator:
  5.times do 
    puts "hi"
  end

  # This method with print out "hi" five times and then return 5,
  # because 5 is the last value of the enumerator before .times

- .each returns the element that was passed into it:

  a = [1, 2, 3]

  a.each do |x|
    puts x
  end

  # This method will print out each element in the array and then
  # return [1, 2, 3].

  a = ["h", "o"]

  a.each do |x|
    puts x.upcase!
  end

  # This method will return ["H", "O"], because we mutated the array in the loop.

- "case" statements. Example of a formatted case-statement:
  case stoplight
  when 'green'  then puts "Go!"
  when 'yellow' then puts 'Slow down!'
  when 'red'    then puts 'Stop!'
  end

- here is how you make an empty String with the String class:
  empty_string = Stirng.new

- String.casecmp compares the value of two strings while ignoring the case of both strings.

- With string interpolation, you can invoke a variable - or a method - within a string, 
  and Ruby will automatically call .to_s on the value. This allows us to include dynamic values within a string. 
  You do this by doing #{}.

- This method can split a string to create an Array and then we immediately use the Array.each method:
  words.split.each {|x| puts x}

- .map returns a new array with each element transformed based on the block's return value. 
  .select returns a new array containing elements selected only if the block's return value is true

- Note that == treats two Arrays as equal if they contain the same number of elements, 
  and each element in one Array is equal to the corresponding element in the second Array.
  This returns false:
  array1 = [1, 5, 9]
  array2 = [1, 9, 5]

  puts array1 == array2 # false

- We will use Symbols as keys for Hashes in most of these exercises, but we can just as easily use Strings. 
  Symbols are faster and use less memory than Strings, so are preferred as Hash keys. 

- Hash[]= creates a new key-value pair or modifies an existing one based on the given key and value.

- Hash.map works similarly to Array.map except for two notable differences. 
  First, Hash.map has two block parameters, instead of one, to account for both the key and the value. 
  Second, you might expect Hash.map to return a Hash, but it actually returns an Array. 
  This is because .map creates a new Array based on the return value of the block regardless of the data structure it is used on.

- Array has a .reverse Method, which reverses the order of the Items in the Array.

- This is a usefull method: Enumerable.reduce(also known as .inject), 
  which combines all elements of the given array by applying a binary operation. This operation is specified by a block or symbol.

- .map(&:to_i) can convert an Array like this ["1", "2"] to an Array like this [1, 2]

- The String Method .chop removes the last element in a string.

- This is what happens if you multiply an Array:
  a = [1, 2]
  a * 2 # return: [1, 2, 1, 2] note: a is still the same. 

- .squeeze is a method for strings that deletes duplicates.

- Hash::new creates a new Hash in which we can place a default value.

- deletes every non Letter Character: word.delete!('^A-Za-z')

- The Array.| method gives the set union of two arrays, so the result contains no duplicates. 

- Array.find returns the first element for which the block is not false and is good for searching through arrays.

- The array.flatten method can combine arrays within arrays.

- .inject(:+) can also be used on Hashes:
    Hash.values.inject(:+)

- string.chars gives us the characters of a string in an Array.

- You can access the elements of a string with string[index]

- with %w() you can make Arrays

- Numeric.abs returns the absolute value of a number (always positive)

- Enumerable.all passes in all elements into a block and returns a boolean

Make a note of every mistake I make here:

- how do I put a default into a meter when I ask the user for input in the method.
- when we iterate through an Array with each and append the values using <<
and then mutate the original Array we also mutate the receiving Array:
  array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo)
  array2 = []
  array1.each { |value| array2 << value }
  array1.each { |value| value.upcase! if value.start_with?('C') }
  puts array2 #  The values that start with C will be upcased

- When writing an if clause start with the most specific clause first.

- Example of Iterating through two Array at the same time:
  def multiply_all_pairs(array1, array2)  
  result = []
  array1.each do |item_1| # first Iteration is started. Array1 is smaller here. 
    array2.each do |x| # second Iteration is started
      result << item_1 * x # referencing item_1 from the first iteration and
                            # x from the second.
    end
  end
  result.sort  
  end
  
Notes from the computer:

04.10.16 Part one Syntactic Sugar, where does code come from, and variable scope
Syntactic Sugar
- With methods the parenthesis are optional when we invoke them. We can call puts without (). EG: puts “hello” or puts (“hello”) both work.

- Ruby will reference a local variable over a method if both have the same name. That’s why we use () for method calls. It helps us know it’s a method.
  If we just use the bare word the local var will always have precedence over a method with the same name.

Where does code come from?
2 main Parts to Ruby
- Code API: what is loaded into the ruby runtine. Kernel is the core module (important) It has the puts method. Puts lives inside of Kernel. Array is another module / Class

- Standard Library API: not automatically loaded. It would bloat the language.

- Code can also come from an external library e.g: Pry an external lib is called a gem

Select vs map vs each
• Select goes through each element in the array and returns the one for which the condition is true
  a = [1, 2, 3, 4]  
  Example: a.select { |x| x > 2 } # will return only values over 2 in an array form #=> [3, 4]
  - If we use the “!” symbol at the end of select (select!) we will alter the original array
  - Select returns a new array based on the blocks *return value*. If the return value evaluated to true, then the element is selected.
  - If we use ‘select!’ and no changes were made to the array it returns nil.

• Each goes through each element and calls the block given
  a = [ “a”, “b”, “c” ]
  Example: a.each { |x| print x, “ hello “} produces: a hello b hello c hello (This the output because of ‘print’. The return value is [ “a”, “b”, “c” ])
  Each return value is the original array. EACH ALWAYS RETURNS THE ORIGINAL ARRAY.

• map: map goes through each element, executes the block and returns an array.  
  - It executes the block and the return values of each value are put in an Array.
  - Example: a = [1, 2, 3, 4] / a.map { |x| x + 5 } #=> [ 6, 7, 8, 9 ]. 
  - With map! We can permanently change the self / array. 
  - Map returns a new array, based on the blocks *return value*. Each element is transformed based on the return value. 

04.10.16 Part 2 / (Pass by reference / value, variables as pointers, method side-effect vs return value)

- Don’t use too many global var. Use local Vars.

Pass by reference vs. pass by value
- + is a non-destructive method / operator
- << is desctructive mthod. It mutates the caller permanently

05.10.16 Part 3 / Collections

- Think of vars as pointers to Objects. Variables are always pointing to Objects.

- Symbols are inmutable (cannot be changed). Think of Symbols as imutable strings.

- The return value of a loop is nil or the last value it returns. 

Part 4 / Student works through some problems

Good approach to coding:
1.  Print out something
2.  Print out the products
3.  Print out each element in Products
4.  Print out elements that are less than (a condition)
5.  Start to incorporate other query conditions

Part 5 / Student works though some problems

- Always reach for the simpler solution first. 

- You can iterate through a string by calling the string.split(“”) method on it. It returns as Array which we can iterate through.

Part 6 / debugging

- Develop logical mindest when encountering a problem.

- Code with intention and don’t do hack and slash

- Fanatical attention to details.

- Reproduce the error consistently. Understand the error well. 

- Don’t write method that do multiple things. They should do one thing.

- p calls inspect on the argument. Gives a better output on arrays and hashes. puts calls to_s.

- Understand the difference between return value and output. Return value is what the method returns and output is what is printed to the screen. 

- You can copy paste with binding pry and ask pry if its true.

- Be systematic in your approach and take things apart one by one. 

- Nil is falsy.

Methods
• You write a methods to extract something
• Consistent naming scheme


Notes from the Book: Introduction to Programming with Ruby

- In The documentation ‘::’ denotes a class Method and ‘#’ an instance method.

- Documentation might also be called API. 

- Whole numbers are integers and numbers that contain decimals are called a float

- The nil type will be treated as false, as it represents an absence of content. The value 0 as in integer is therefore true, because it is not nothing.

- When we call the ‘puts’ method, we’re telling Ruby to print something on the screen. However ‘puts’ does not return what is printed to the screen. 
Expressions do something but they also return something. The value returned is not necessarily the action that was performed.

- ‘gets’ stands for get string.

- Inner scope can access variable initilalized in an outer scope, but not vice versa.

- Methods create their own scope that is entirely outside the execution flow. We can pass in Variables by including them as parameters, and we can create variable inside the method. But we cannot simply access variable without passing them in and we cannot access variable created inside the method outside of it.

- Do not mix up do/end with methods when you’re working with variable scope issues.

- When we use ‘each’, ‘times’ and other methods, followed by ‘{}’ or ‘do/end’, that’s when a new block is created.

- We can create a var in the outer scope. Access it with times, change it and then print it out in the outer scope:

  a = 7 # create the var

  3.times do |n|
    a = 16 # reassign it
  end

  puts a # puts out 16

  The above code works because we are only reassigning the variable and not creating it.
  This would not work:

  3.times do |n|
    a = 16 # initialize the variable inside a block
  end
  
  puts a # puts out method error / a not found.
  This gives us a ‘no method error’ because the var was initialized inside a block and we cannot access that outside. 

- When you place a ‘return’ in the middle of a method, it will return the evaluated results, without executing the next line. 
  If we don’t use ‘return’, the last line of a method is the implicit return value. 

- In irb The return value is precede by the “=>”.

- irb stands for interactive ruby.

Flow-control

if x = 5
  Puts “how can this be true?”
else
  Puts “it is not true”
end
The code above will always put out the first statement because assigning a variable is always going to be true.


Loops

- We can exit a loop with ‘break’.

- With ‘next’ we can skip to the next iteration of the loop.

12.10.16
Variable Scope Example (from myself)

  a = 0
  b = 10

  def test(var) # we pass in ‘b’ here (see the method call)
    puts "b is #{var}" # ‘b’ is variable is passed in
    a = var # this is not the same 'a' as above, it is a different 'a', which is initialized here in the method.
    puts "a is #{a}" # we can call 'a' here because we created it in the method. It is not the same ‘a’ as above. It will out ‘10’, because a = b and ‘b’ is ‘10’.
    c = 10 # creating a new variabel 'c'.
    puts "c is #{c}" # 'c' can be called in the method, but not outside of it
  end

  puts a # this puts out '0', because we are calling the original 'a'.

  puts c # error: undefined local variable or method "c"

  test(b) # passing in 'b' as 'var'


  1.times do
    a = 5 # This is a Bloc and not a method and because of that it has access to 'a'. We are reassigning 'a' here. The original ‘a’ from above is reassigned. 
  end
  puts "a is now #{a}" # we have reassigned the original 'a' and it is 5 now.


- We can initialize a variable in a ‘for’ loop and then access it outside the loop. This is something we cannot do with other Blocs. 

  x = gets.chomp.to_i

  for i in 1..x do
    c = 60
    puts i

  end

  puts c  # This puts out ‘60’. ‘c’ was initialized in the ‘for’ loop and then accessed outside of the loop.  

Method scopes are entirely self contained. The only variable methods have access to must be passed in to the methods (Note: we’re only talking about local variables for now). 

14.10.16

- Exception Handling => Exception handling is a structure used to handle the possibility of an error occurring in a program. 
  It is a way of handling the error by changing the flow of control without exiting the program entirely. 

- The major difference between an array and a hash is that a hash contains a key value pair for referencing by key.

- Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it. When you place ‘return’ in a mthod, 
  the return value of that method will be returned and the line(s) after that will not be executed.

- Any method that operates on numbers and Boolean values is guaranteed to be non-mutating with respect to that value.

- Assignment (=) merely tells Ruby to bind an object to a variable. This means that assignment does not change an object; it merely connects the variable to a new object. 
  While ‘=’ is not an actual method in Ruby, it acts like a non-mutating method and should be treated as such. 

- There are methods with ‘=’ that are mutating such as:
  str[3] = 'x'
  array[5] = Person.new
  hash[:age] = 25
  These are "setter Methods"
  These look like assignment, which is non-mutating, but is, in fact, mutating. 
  #[] modifies the original object(the string, Array, or Hash). It does not change the binding of each variable. 
  The reason for this is that the indexed assignment is a method that a class must supply if it need indexed assignment. 
  The method is name ‘#[]=’ is expected to mutate the object to which it applies. It does not create a new object.

- The ‘<<’ method is used by Array, Hashes and string and is mutating for thoses classes. The ‘+=’ is non-mutating.
Mental Model
Variable -> Object
If we use ‘<< “Hello”’
Variable -> Objecthello
If we use variable += “hello”
Variable -> New Object

p vs puts vs print

- ‘.print’ calls ‘to_s’ on the object and puts it out to $stdout. ‘print’ does not append a new line

- ‘puts’ is similar to ‘print’ – calling ‘to_s’ – but adds a newline to the output.

- ‘p’ is similar to ‘puts’ in that it adds a newline, but rather than calling ‘to_s’, ‘p’ calls ‘inspect’.

- ‘p’ can be more useful for debugging. As ‘puts’ calls ‘to_s’, yout cant be exactly sure of what class an object is. With ‘p’ we get a better indicator of what we are looking at. 
‘p’ returns the element, while ‘puts’ and ‘print’ return ‘nil’.

Exercises

The return value of a ‘while’ loop is ‘nil’ unless a ‘break’ is used to supply a value. The way to supply a value to break is this:

  a = 0

  b = while a < 10
    p a  
    break a if a == 5 #  by putting ‘a’ after break and then giving an if condition to break, the value returned after the break is 5
    a += 1  
  end

  p b # prints out 5

- Some languages make copies of method arguments, and pass those copies to the method — 
  since they are merely copies, the original objects can’t be modified. 
  Objects passed to methods in this way are said to be passed by value, 
  and the language is said to be using a pass by value object passing strategy.

- Other languages pass references to the method instead — 
  a reference can be used to modify the original object, 
  provided that object is mutable. 
  Objects passed to methods in this way are said to be passed by reference, 
  and the language is said to be using a pass by reference object passing strategy.

- Pass by value, as you’ll recall, means copying the original objects, so the original object cannot be modified.

- We’ve also learned that assignment to a variable merely changes the binding; 
  the object the variable originally referenced is not modified. Instead, a different object is bound to the variable.

- Setter methods for class instance variables and indexed assignment are not the same as assignment. 
  We’ll return to this below, but for now, remember that setter methods and indexed assignment usually mutate their receiver. 
  str[3] = 'x'
  array[5] = Person.new
  hash[:age] = 25


- Table 9.2 Common hash query methods and their meanings
  Method name/Sample call Meaning
  h.has_key?(1)          True if h has the key 1
  h.include?(1)          Synonym for has_key?
  h.key?(1)              Synonym for has_key?
  h.member?(1)           Synonym for has_key?
  h.has_value?("three")  True if any value in h is "three"
  h.value?("three")      Synonym for has_value?
  h.empty?               True if h has no key/value pairs
  h.size                 Number of key/value pairs in h

- Table 9.1 Summary of common array query methods
  Method name               Sample call Meaning
  a.size (synonym: length)  Number of elements in the array
  a.empty?                  True if a is an empty array; false if it has any elements
  a.include?(item)          True if the array includes items; false otherwise
  a.count(item)             Number of occurrences of item in array
  a.first(n=1)              First n elements of array
  a.last(n=1)               Last n elements of array
  a.sample(n=1)             n random elements from array

- map(&:to_i) turns every element in an array into integers

- string.delete can take several different arguments:
  delete('^a-z0-9') deletes everything except small caps from a-b and numbers from 0-9.
  delete('a-zA-Z') deletes all letters small and big cap.

- ask questions to clarify problems in an interview / assessment 

- break bigger problems into smaller problems. Avoid doing it all at once. 
  express the problem into smaller problems; not solutions. 

- check your building blocks
  - run code often
  - debug locally

- getting to a working solution is better 
  than a fancy solution that does not work.

- Understand the problem
  - requirements are explicit (the problem formulation is explicit)
    - take notes
  - requirements are not so explicit and need to be modeled
    - examples need to be described in computation works
  - implicit knowledge needs to be captured
    - convert to explicit rules, in computational language
  - identifying and defining important terms and concepts
    - which data structure should i use. 