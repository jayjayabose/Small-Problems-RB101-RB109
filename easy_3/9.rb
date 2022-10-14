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
#   - is_palindrome is NOT case sensitive
#   - is_palindrome ignores punctuation
#   Implicit
#   - palindrom consdiers alphanumeric characteres,( ignore spaces) 

# EXAMPLES

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# DATA STRUCURE

# string: inputs
# boolean: outupt

# ALGORITHM

# lowercase
# remove punctuation
# return palindome? (arg)

# CODE WITH INTENTION
def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  processed_string = string.downcase.gsub(/[^a-z0-9]/, '')
  palindrome? processed_string
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
