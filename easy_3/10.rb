# PROBLEM

# Write a method that returns true if its integer argument is palindromic, false otherwise.
#  A palindromic number reads the same forwards and backwards.

# input: integer
# output: boolean
# rules:
#   Explicit
#   - true if integer is_palindrome?
#   Implicit
#   - 

# EXAMPLES

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# DATA STRUCURE

# integer: inputs
# boolean: outupt

# ALGORITHM

# convert to string
# palindrome?


# CODE WITH INTENTION
def palindromic_number?(num)
  palindrome? num.to_s
end

def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  processed_string = string.downcase.gsub(/[^a-z0-9]/, '')
  palindrome? processed_string
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true