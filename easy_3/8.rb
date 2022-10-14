# PROBLEM

# Write a method that 
# returns true if the string passed as an argument is a palindrome, false otherwise. 
# A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# input: string
# output: boolean
# rules:
#   Explicit
#   - true if stirng is_palindrome?
#   - is_palindrome is case sensitive


# EXAMPLES

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# DATA STRUCURE

# string: inputs
# boolean: outupt

# ALGORITHM

# create reversed string

# return input == reversed string

# CODE WITH INTENTION

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?([1, 2, 3, 4, 5]) == false