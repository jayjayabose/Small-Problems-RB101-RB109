=begin
PROBLEM
(examine test cases, ask questions if needed, verify assumptions -- don't solve the wrong problem)

Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

input *: String (sentance)

output *: String (new. next to last word)

rules - explicit *
  word = sequence of non-blank characters.
  input: contains at least two words.
  return next to last word (n -1)

rules - implicit (?)

rules - questions (?)
  ' ' is a blank?

restate the problem (?)


EXAMPLES / TEST CASES
(work an example if the Algo is complex)

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

DATA STRUCTURES (?)
String
Array (words)
String


ALGORITHM
(work on a sub problem if needed, beware of fuzziness, if needed: (i) work on a sub problem; (ii) simplify via small concrete examples; (III) walk a test case through the algo)
pseudo code *
Approach
1. Break String (sentance) into an Aarry of words (Strings)
2. Find next to last element
3. return that element


formal pseudo code (?)
(if the pseudo code has gotten complex)

REFACTOR
e.g. e.g. remove unnecessary variable initialization
=end

def penultimate(sentance)
  words = sentance.split(' ')
  words[words.length - 2]
end  

# p penultimate('last word') #== 'last'


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'