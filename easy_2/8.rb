# PROBLEM

# ask user to enter an integer greater than 0, 
# asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
# output a message with result of computation

# rules
# input: integer greater than zero
# input: sum or product
# output: string including result of computation

# EXAMPLES and TEST CASES

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# DATA STRUCTURE


# string input_number
# string input_operation
# range 1 .. number
# output_number
# output_operation

# ALGORITHN

# set output_number equal to nil
# set output_operation equal to nil
# prompt user for number
# convert input to integer
# prompt user for operation

# if operation == s
#  output = 0
#  ouutput operation = sum
#  loop  1 .. number
#   - add current number to ouput
# else
#  output = 1
#  ouutput operation = product
#  loop 1 .. number
#   - set output = output * current number

# output messagse

#CODE WITH INTENT
puts '>> Please enter an integer greater than 0:'
input_number = gets.chomp.to_i

puts '>> Enter \'s\' to compute the sum, \'p\' to compute the product.'
input_operation = gets.chomp

if input_operation == 's' 
  output_number = 0
  output_operation = 'sum'
  (1..input_number).each { |x| output_number += x }
else
  output_number = 1
  output_operation = 'product'  
  (1..input_number).each { |x| output_number *= x }
end

puts  "The #{output_operation} of the integers between 1 and #{input_number} is #{output_number}." 
