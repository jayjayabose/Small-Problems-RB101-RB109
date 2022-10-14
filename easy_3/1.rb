# PROBLEM: 
# Write a program that 
# solicits 6 numbers from the user, 
# then prints a message that describes 
# whether or not the 6th number appears amongst the first 5 numbers.

# EXAMPLES / TEST CASES
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20

# The number 17 appears in [25, 15, 20, 17, 23].
# The number 18 does not appear in [25, 15, 20, 17, 23].

# DATA STRUCTURES

# array to hold six user inputs

# ALGORITHM

# 1. COLLECT USER INPUT
# do six times
#   - get user input
#   - add to array

# 2. SEARCH

# # OUTPUT

NUMBERS_NEEDED = 6
ORDINALS = ['1st', '2nd', '3rd', '4th', '5th', 'last']

# methods
def prompt(msg) 
  puts "==> #{msg}"
end  

def get_user_input(n)
  input = ''
  loop do
    prompt "Enter the #{ORDINALS[n]} number:"
    input = gets.chomp
    break if input.to_i.to_s == input
    prompt "#{input} is not a valid number. Please enter an integer."
  end
  input.to_i
end

# begin
user_inputs = []

# get input
NUMBERS_NEEDED.times do | n |
  user_inputs.push get_user_input n
end  

# search
search_int = user_inputs.pop
search_int_found = user_inputs.include?(search_int)

# output
msg_seg_1 = "The number #{search_int} "
msg_seg_2 = search_int_found ? 'does' : "does not" 
msg_seg_3 = " appear in: #{user_inputs}."
msg_full = msg_seg_1 + msg_seg_2 + msg_seg_3

prompt(msg_full)
