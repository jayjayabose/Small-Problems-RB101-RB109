=begin
PROBLEM

Given a string that consists of 
some words (all lowercased) and 
an assortment of non-alphabetic characters, 

write a method that returns that string with 
all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, you should only have one space in the result
 (the result should never have consecutive spaces).



input
- String\

output
- String

rules
Explicit
- replace non-alphabetic characters with spaces
- no consecutive spaces

Implicit
- 

EXAMPLES / TEST CASES
cleanup("---what's my +*& line?") == ' what s my line '


DATA STRUCTURES


ALGORITHM
replace non-alphabetic
replace consecutive spaces with single space

=end

def cleanup(str)
  # str.gsub!(/a/,' ')
  str_alphabetic = str.gsub(/[^a-zA-Z]/,' ')
  str_alphabetic.gsub(/ {2,}/,' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '