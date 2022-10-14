# PROBLEM
# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those two numbers:
#  addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# EXAMPLE AND TEST CASES

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# DATA STRUCTURES
# int a, int b

# ALGORITHM
# get input 1
# get input 2
# do 5 operations and get putpus
# output five lines

def prompt(msg)
  puts "==> #{msg}"
end

prompt ('Enter the first number:')
input_a = gets.chomp.to_i

prompt ('Enter the second number:')
input_b = gets.chomp.to_i

sum = input_a + input_b
subtraction = input_a - input_b
product = input_a * input_b
division = input_a / input_b
remainder = input_a % input_b
exponent = input_a ** input_b

output = {
  '+' => sum,
  '-' => subtraction,
  '*' => product,
  '/' => division,
  '%' => remainder,
  '**' => exponent,
}

output.each { |key, value| prompt "#{input_a} #{key} #{input_b} = #{value}" }