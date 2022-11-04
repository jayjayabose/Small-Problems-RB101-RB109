=begin
PROBLEM
(examine test cases, ask questions if needed, verify assumptions -- don't solve the wrong problem)

Write a method that 
  returns a list 
    of all substrings of a string that are palindromic. 
    (That is, each substring must consist of the same sequence of characters forwards as it does backwards. )
      The return value should be arranged in the same sequence as the substrings appear in the string. 
      Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

consider all characters and 
pay attention to case; 
(that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that )

single characters are not palindromes.

input *: String

output *: Array (of strings (substrings) which are pallindromes)

rules - explicit *
  array contains all pallindromic subarrays
    include duplicates
  pallindrome is same sequence of characters forward and back
    two or more characters
    case senstive
    consider all characters (e.g. not just letters)
  subarrays in return Array are in sequence in which they appear in the string


rules - implicit (?)

rules - questions (?)

restate the problem (?)


EXAMPLES / TEST CASES
(work an example if the Algo is complex)

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


DATA STRUCTURES (?)
  String

  Array


ALGORITHM
approach:
1. Get an Array of all substrings
2. Filter that array for substrings that are pallindroms

pseudo code *

Given a String
initialize an Array to result calling substrings(string)
iterate through each element in the array
  if the elemment is a pallindrome (sequence of charss in reverse == sequence of chars)
  then add the elment to the output array
return array with elements that are were 'true'

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

def palindrome?(string)
  string.reverse == string && string.length > 1
end  

def palindromes(string)
  substrings = substrings(string).select do |substring|
    palindrome?(substring)
  end
  substrings
end  

# palindromes('abcd') # == []

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']

p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']
