=begin
PROBLEM

Write a method that takes an integer, and 
converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, 
such as Integer#to_s, String(), Kernel#format, etc. 
You may, however, use integer_to_string from the previous exercise.

input: integer
- may be < 0 e.g. -4321
- may be 0. e.g 0
- may be > 0 e.g. +4321
output: string
- prepend "-" if < 0
- prepend "+" if > 0
rules:
  Explicit
  - input may be less than zero
  
EXAMPLES
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'


DATA STRUCTURES

ALGORITHM

determine case (i) < 0, (ii) 0 or (iii) > 0
set prepend value 
get absolute value of argement
call integer_to_string passign absolute value
return prptend value + string

=end




INTEGER_STRING = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '10', 0 => '0'
}
#v1 solution: 20 minutes
# def signed_integer_to_string(signed_int)
#   prepend_str = if signed_int < 0
#     '-'
#   elsif signed_int > 0
#     '+'
#   else
#     prepend_str = ''
#   end  
#   abs_int = signed_int.abs
#   prepend_str + integer_to_string(abs_int)
# end  

#2 given solution + further exploration
def signed_integer_to_string(signed_int)
  
  prepend_str = case signed_int <=> 0
                when -1 then '-' 
                when 1 then '+'
                else ''
                end
  prepend_str + integer_to_string(signed_int.abs)
end

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
  digits_string = ''
  loop do
  int, digit = int.divmod(10)
    digits_string.prepend INTEGER_STRING[digit]
    break if int == 0
  end
  digits_string
end  


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'