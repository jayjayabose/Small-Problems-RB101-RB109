# PROBLEM

# In this exercise, you will write a function named xor 
# that takes two arguments, and 
# returns true if exactly one of its arguments is truthy, 
# false otherwise. 
# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# rules
# input: two arguments of any type
# return: boolean
# rules
#   Explicit
#   - return true if one and only one argment is truty, else return false

# EXAMPLES

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# DATA STRUCURE

# arg_1: any object
# arg_2: any object
# output: boolean

# ALGORITHM

# determine truty / falsey for each argument
# if truthy coubnt == 1 return true
# else return false

def xor? (arg_1, arg_2)
  
  arg_1_boolan = arg_1 ? true : false
  arg_2_boolan = arg_2 ? true : false
  # puts "arg_1_boolean: #{arg_1_boolan}"
  # puts "arg_2_boolean: #{arg_2_boolan}"
  [arg_1_boolan, arg_2_boolan].count(true) == 1 ? true : false
  
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
