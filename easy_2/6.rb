# PROBLEM

# Print to console
# all odd numbers: 1 to 99, inclusive,
# each number on a separate line.

# input: none
# output: print to console
# rules: 
#   Explicit requirements
#     - only odd numbers
#     - 1 through 99, inclusive
#     - each number of separate line

#   Implicit requirements
#     - 

# EXAMPLES / TEST CASES

# ==> 1
# ==> 2 (...)

# DATA STRUCTURES

# counter

#ALGORITHM

# set counter to 1
# loop unless counter > 99
#   - print counter
#   - increment counter by 2

counter = 1

while counter <= 99
  puts counter
  counter += 2
end  

