=begin
PROBLEM:
Write a method that 
  takes a positive integer as an argument and 
  returns that number 
    with its digits reversed. Examples:

- input *: integer (positive number)

- output *: integer 

- rules - explicit *
  output is input with digits reversed

- rules - implicit (?)

- rules - questions (?)

- restate the problem (?)


EXAMPLES / TEST CASES:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1


DATA STRUCTURES: (?)
integer
string
integer

ALGORITHM:
- approach

- pseudo code
Given an Integer input

Initialize a String = input
Reassign to reverse string
convert string to inteter and return

=end

def reversed_number(number)
  number.to_s.reverse!.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1