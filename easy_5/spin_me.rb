=begin
PROBLEM
You are given a method named spin_me that 
takes a string as an argument and 
returns a string that contains the same words, 
but with each word's characters reversed. 

Given the method's implementation, 
will the returned string be the same object as the one passed in as an argument or a different object?


input
- 
output
- 
rules
Explicit
- 
Implicit

Restate the problem
- 

EXAMPLES / TEST CASES
def spin_me(str)
  str.split.each do |word| #split will create new string objects
    word.reverse! #each new string object is mutated
  end.join(" ") #join creates a new object (i think)
end

spin_me("hello world") # "olleh dlrow"

DATA STRUCTURES


ALGORITHM

=end

def spin_me(str)
  p str.object_id
  p str.class
  output =  str.split.each do |word| #split will create new string objects
    p word.object_id
    word.reverse! #each new string object is mutated
  end

  p output.object_id
  p output.class

  output = output.join(" ") #join creates a new object (i think)
  p output.object_id
  p output.class
  output
end
str = 'hello world'
p spin_me(str) # "olleh dlrow"
p str
=begin
The returned string is not the same object that is passed as an argument. #split returns an  array of new String objects. Although `#reverse` is destructive, it is mutating objects that are not the object passed as an argument. `#join` creates another new object, which is the object that is returned

=end