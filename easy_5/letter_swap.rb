=begin
PROBLEM
Given a string of words separated by spaces, 
write a method that takes this string of words and 
returns a string 
in which the first and last letters of every word are swapped.

every word contains at least one letter, and that 
the string will always contain at least one word.
each string contains nothing but words and spaces

input
- String
  - words separated by spaces
  = words > 0
  - word.length > 0 
  - each string contains nothing but words and spaces

output
- String
  - words separated by spaces

rules
Explicit
- first and last letters of every word are swapped.
Implicit
- 

EXAMPLES / TEST CASES
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


DATA STRUCTURES
input
  string: stentence
  array: words
  


ALGORITHM
#main
split sentence into array of words: sentance.split(' ')
loop through words words.map!
swap first and last in each words: swap()
join Array
return new string

#helper: swapFirstLast!
input: String
output String



=end
# CODE WITH INTENT
def swap(sentence)
  words = sentence.split(' ').map! do |word|
    swapFirstLast word
  end
  words.join(' ')
end


def swapFirstLast(str)
  # my solution
  characters = str.chars
  # first = characters.first
  # last = characters.last
  # characters[0] = last
  # characters[-1] = first
  # characters.join('')

  str[0], str[-1] = str[-1], str[0]
  str
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# test = 'abcd'
# puts test
# swapFirstLast!(test)
# puts test
