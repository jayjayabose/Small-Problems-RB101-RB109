# PROBLEM

#Get input from user
#Check if input ends in !
#Display message to user 
# - include input
# - upcase if input ends in !

# input: string
# outut: string
# rules:
#   Explicit requirements
#     - take input
#     - display outut 
#     - if input includes ! yell

#   Implicit
#     - check for ! in last position
#     - remove ! if needed
#     - include name in output
#     - change message if input includes ! in last position

#EXAMPLES / TEST CASES
# Bob # ==> Hello Bob.
# Bob! # ==> HELLO BOB. WHY ARE WE SCREAMING?
# '' ==> Hello.
# '!' ==> HELLO. WHY ARE WE SCREAMING?.


#DATA STRUCTURES
# user_name - string

#ALGORITHM
# 1. prompt user for input, assigne to user_name

# 2. check user_name for '!' in last position
#  - if true, 
#     remove ! from user_name
#     output: HELLO [user_name]. WHY ARE WE SCREAMING?
#  - else
#     output: Hello [user_name].

puts 'What is your name?'
user_name = gets.chomp

if (user_name[-1] == '!')
  user_name.chop!
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end
