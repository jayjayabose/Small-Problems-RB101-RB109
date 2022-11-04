=begin
PROBLEM:
Write a method that 
  takes a string, and 
    returns a new string in which 
      every character is doubled.

- input *: String

- output *: String (new String object)

- rules - explicit *
  every character is doubled
  empty -> empty

- rules - implicit (?)

- rules - questions (?)

- restate the problem (?)


EXAMPLES / TEST CASES:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

DATA STRUCTURES: (?)
String
Array
New String

ALGORITHM:
- approach
option 1
create a collection of characters
transform collection, doubling each character
convert to string and return

option2
iterate over every character in the string
add each charcter * 2 to an output string 

- pseudo code
Given a String: input

Initialize new  String: output to ''
Iterate over char in input
  append each char twice to output

return output

=end

def repeater(input)
  output = ''
  0.upto(input.length - 1) do |i|
    output << input[i] * 2
  end  
  output
end  



p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''