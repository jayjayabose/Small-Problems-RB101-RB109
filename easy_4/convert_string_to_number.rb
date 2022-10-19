# PROBLEM
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
# String#to_i and the Integer constructor (Integer()) behave similarly. 
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and 
# returns the appropriate number as an integer. 

# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, 
# nor should you worry about invalid characters; a
# ssume all characters will be numeric.

# You may not use any of the standard conversion methods available
#  in Ruby to convert a string to a number, 
#   such as String#to_i, Integer(), etc. 
  
# Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# rules
# Explict
# input
# - string
# - all chars are numeric

# output
# - integer

# other
# - do not use String#to_i,, etc

# EXAMPLES
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570  

# DATA STRUCTURES
# - input: string -> array of characters
# - output: integer

# ALGORITHM
# transform string to array of chars

# iterate over array
# - convert_to_integer(char)
# save as new array

# convert array to integer
  # use position to determine 10s place
  # multiply and add to output
# return output

# 1. version 1 solution - 35 minutes
def string_to_integer(str)
  #convert to array of chars
  array_chars = str.chars

  #convert array chars to array ints
  array_ints = array_chars.map { |element| convert_char_to_integer(element) }

  #convert array ints to integer
  convert_array_ints_to_integer(array_ints)

end  

# helper method convert_char_to_integer
# input: char
# output: integer

# helper mthod: convert_array_ints_to_integer
# input: array (of chars)
# ouptput integer

def convert_char_to_integer(char)
  chars_to_ints = {
    '0' => 0, '1' => 1,
    '2' => 2, '3' => 3,
    '4' => 4, '5' => 5,
    '6' => 6, '7' => 7,
    '8' => 8, '9' => 9,
  }
  chars_to_ints[char]
end

def convert_array_ints_to_integer(arr)
  output = 0
  arr.reverse!
  arr.each_with_index do |element, i|
    output += element * (10 ** i)
  end
  output
end  

# p convert_char_to_integer('0')
# p convert_array_ints_to_integer([1, 2, 5])

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570  
