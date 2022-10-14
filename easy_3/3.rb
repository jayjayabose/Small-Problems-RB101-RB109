# PROBLEM

# Write a program that will ask a user for an input of a word or multiple words
#  and give back the number of characters. Spaces should not be counted as a character.

# rules
# input: string
# output: string
#   Explicit
#   - do not count space characters

# EXAMPLES / TEST CASES
# Please write word or multiple words: walk
# There are [4] characters in "walk".


# Please write word or multiple words: walk, don't run
# There are [13] characters in "walk, don't run".

# DATA STRUCTURES

# ALGORITHM

# get input
# delete speaces
# count characters assign to variab
# output

def prompt(msg)
  puts "#{msg}"
end

prompt "Please write word or multiple words:"
user_input = gets.chomp

character_count = user_input.delete(' ').length

prompt "There are #{character_count} characters in \"#{user_input}\""
