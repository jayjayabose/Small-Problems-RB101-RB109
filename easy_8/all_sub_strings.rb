=begin
PROBLEM
(examine test cases, ask questions if needed, verify assumptions -- don't solve the wrong problem)
Write a method that 
  returns a list of all substrings of a string. 
  The returned list should be ordered by where in the string the substring begins. 
    This means that all substrings that start at position 0 should come first, 
    then all substrings that start at position 1, and so on. 
    Since multiple substrings will occur at each position, 
    the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:


input *: String

output *: Array (of stubstrings)

rules - explicit *
  array contains all substrings
  ordered by starting char
    then ordered by substring length

rules - implicit (?)

rules - questions (?)

restate the problem (?)


EXAMPLES / TEST CASES
(work an example if the Algo is complex)

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',   #abcde
  'b', 'bc', 'bcd', 'bcde',            #bcde
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

DATA STRUCTURES (?)
String

Array

ALGORITHM
(work on a sub problem if needed, beware of fuzziness, if needed: (i) work on a sub problem; (ii) simplify via small concrete examples; (III) walk a test case through the algo)
appraoch
Given String

initialize output
while string lengh is greater than 0
  get leading substrings for string
  add to output
  remove first charactr of string <--
  reassign string to string[1, string.length]

pseudo code *


formal pseudo code (?)
(if the pseudo code has gotten complex)

REFACTOR
e.g. e.g. remove unnecessary variable initialization
=end

def substrings(string)
  all_substrings = []

  1.upto(string.length) do
    all_substrings << leading_substrings(string)
    string = string[1, string.length]    
  end
  all_substrings.flatten
end  

def leading_substrings(string)
  substrings = []
  0.upto(string.length - 1) do |i|
    substrings << substring = string[0..i]
  end
  substrings
end  

 p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e' ]
