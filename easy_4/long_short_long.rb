# PROBLEM
# Write a method that takes two strings as arguments
# determines the longest of the two strings, 
# returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# input: str1, str2
# output; str (new)
# rules
# 	Explicit
# 	- return shoret + long + short
# 	- Assume inputs are not equal
#   - inputs are strings
#  - input can be an empty string
#   Implicit
#   - 

#EXAMPLES: 
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# ALGORITHM
#  - find shorter input
#  - concatenate short + long + short

def short_long_short(str_a, str_b)
  str_a.length < str_b.length ? str_a + str_b + str_a : str_b + str_a + str_b
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"