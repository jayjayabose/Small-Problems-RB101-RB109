=begin
PROBLEM

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, 
such as Integer#to_s, String(), Kernel#format, etc. 
Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

input: integer
output: string
rules:
  Explicit
  - input >= 0
  - 
EXAMPLES
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

DATA STRUCTURES

ALGORITHM

create digitss array
crate digit_strings_array: 
  loop over digits (map)
  -metch digit to digit_string
  -add digitl_string to output-string
return joined array
=end

INTEGER_STRING = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '10', 0 => '0'
}
# #1 my solution. burned a ton of time writing my own #digits helper function
# def integer_to_string(int)
#   digits_array = int.digits.reverse!
#   string_digits_array = digits_array.map do |element|
#     INTEGER_STRING[element]
#   end
#   string_digits_array.join()
# end


#2 given solution
def integer_to_string(int)
  loop do
  int, digit = int.divmod(10)
    digits_string.prepend INTEGER_STRING[digit]
    break if int == 0
  end
  digits_string
end  


# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'