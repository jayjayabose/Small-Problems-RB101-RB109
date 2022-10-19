# PROBLEM

# In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
# In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and 
# returns the appropriate number as an integer. 
# The String may have a leading + or - sign; 
#  - if the first character is a +, your method should return a positive number; 
#  - if it is a -, your method should return a negative number. 
#  - If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.
  

# rules
# Explict
# input
# - string
# - all chars are numeric, expect possibly the first
    # - if the first character is a +, your method should return a positive number; 
    # - if it is a -, your method should return a negative number. 
    # - If no sign is given, you should return a positive number.

# output
# - integer, positive or negative

# other
# - do not use String#to_i,, etc

# EXAMPLES
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100


# DATA STRUCTURES
# - input: string -> array of characters
# - output: integer

# ALGORITHM
# set sign_value = 1

# if first character is a sign ('+' or '-')
#   remove first character
#   set sign_value = -1 if sign = '-'
#   string_to_integer * sign_value
# else
#   string_to_integer
  
require 'pry'    

#V1: 35 minutes. Hung up on coding syntax: return value of slice!, also typos
def string_to_signed_integer(str)
  positive_negative_multiplier = 1
  first_char = str[0]

  if first_char == '-' || first_char == '+'
    positive_negative_multiplier = -1 if first_char == '-'
    # str.slice!(1...str.length)
    str = str[1...str.length]
    # binding.pry
    string_to_integer(str) * positive_negative_multiplier
  else
    string_to_integer(str)
  end
end


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

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100