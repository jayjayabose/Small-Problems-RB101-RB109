=begin
PROBLEM
Write a method that 
takes an array of strings, and 
returns an array of the same string values, except 
with the vowels (a, e, i, o, u) removed.

input
  Array (of strings)

output
  Array (of Srings)

  rules

Explicit
  output is same as input, minus vowels
  output does not contain space characters
  vowels: (a, e, i, o, u) 
    case insentitive, also include (A E I O U)
  retun empty for a substring with all vowels

Implicit

Question
- new array?

Restate the problem
- return a new array with strings represening each 'word" in a string, but with vowels removed

EXAMPLES / TEST CASES
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


DATA STRUCTURES


ALGORITHM
high level:

Given: Array input

iterate over each String in the array
  remove vowels from String
return the array

=end

def remove_vowels(input)
  input.map do |str|
    str.gsub(/[aeiouAEIOU]/,'')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
