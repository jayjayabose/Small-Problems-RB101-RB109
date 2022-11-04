=begin
PROBLEM
(examine test cases, ask questions if needed, verify assumptions -- don't solve the wrong problem)

Write a method that 
returns a list of all substrings of a string 
  that start at the beginning of the original string. 
  
The return value should be arranged in order from shortest to longest substring.



input *: String

output *: Array (of sub strings)

rules - explicit *
  all substring start with with first character in string
  elements in array are sorted by length, ascencing

rules - implicit (?)
  there will be n substrings, where n = String.length

rules - questions (?)

restate the problem (?)


EXAMPLES / TEST CASES
(work an example if the Algo is complex)

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


DATA STRUCTURES (?)
String
Array


ALGORITHM
(work on a sub problem if needed, beware of fuzziness, if needed: (i) work on a sub problem; (ii) simplify via small concrete examples; (III) walk a test case through the algo)
approach
1. create n substrings (all using first character in string)
2. add each subsctring to an output array
3. sort output array and return

pseudo code *

Given a String

initialize output array
ininitlize n = 1
Repeat n times, 
  select subtring 0 - n : string[0, n]
  add to arrray
  n = n+ 1

sort array by length
  


formal pseudo code (?)
(if the pseudo code has gotten complex)

REFACTOR
e.g. e.g. remove unnecessary variable initialization
=end

# def leading_substrings(string)
#   substrings = []
#   substring_length = 1

#   while substring_length <= string.length
#     substrings << substring = string[0, substring_length]
#     substring_length += 1
#   end
#   substrings
# end  

def leading_substrings(string)
  substrings =[]
  0.upto(string.length - 1) do |i|
    substrings << substring = string[0..i]
  end
  substrings
end  
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']