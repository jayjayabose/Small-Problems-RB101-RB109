=begin
PROBLEM:
Write a method that 
  takes a non-empty string argument, and 
  returns the middle character or characters of the argument. 
    If the argument has an odd length, you should return exactly one character. 
    If the argument has an even length, you should return exactly two characters.

- input *: String (not empty)

- output *: String (one or two chars)

- rules - explicit *
  input is not empty
  if input is odd, return middle character
  if input is even, return middle two characters

- rules - implicit (?)

- rules - questions (?)
    solution for string of length 2?

- restate the problem (?)


EXAMPLES / TEST CASES:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

DATA STRUCTURES: (?)
String

String (one or two characters)

ALGORITHM:
# 'I love ruby' # => 'e'
length: 11
5  , 1, 5     # number of chars
0-4, 5, 6-10  # indices
middle        # length / 2 # string[string.length / 2]

# 'I love ruby_' # => 'e '
length: 12
5  , 2, 5     # number of chars
0-4, 5..6, 7-11  # indices
middle        # length / 2 # string[(string.length / 2) - 1, 2]

----

- approach
determne if length is odd or even
return an appropriate substring

- pseudo code
Given String: input
if length is odd
  return odd substring
else
  return even substring
  
=end

def center_of(string)
  if string.length.odd?
    string[string.length / 2]
  else
    string[(string.length / 2) - 1, 2]
  end 
end  

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'