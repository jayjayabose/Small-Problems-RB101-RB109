=begin
PROBLEM
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that 
the first 2 numbers are 1 by definition, and
 each subsequent number is the sum of the two previous numbers. 

Write a method that 
calculates and returns the index 
of the first Fibonacci number that has the number of digits specified as an argument. 
(The first Fibonacci number has index 1.)

You may assume that the argument is always greater than or equal to 2.

input
  integer: digits

output
  integer: index of first qualifying number

rules
Explicit
  sequence is 1 index (not zero)
  return index of first qualifying numbers
  qualifying number has digits == input
  input >= 2
  f-sequence
    first 2 numbers are 1 by definition
    V(i)) = V(i-1) + V(in-2)

Implicit

Restate the problem
Find the least F-number with required digits and return the index of that number


EXAMPLES / TEST CASES
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

DATA STRUCTURES


ALGORITHM
First thoughts
- traverse F-sequence
- need to know: index, digits

Psuedo-Code
Given an Integer: target_digits

Go to next F-number until digits in current meets target_digits
return Index

--



Formal Pseudo-Code
Given Integer: target_digits

SET index = 3
SET preceding_numbers [1, 1] #[0] index-2, [1] index -1
SET f_number = 2

WHILE f_number.to_s.legnth < target_digits
  [increment f-number]
  index += 1

index  


=end

#CODE WITH INTENT
def find_fibonacci_index_by_length(target_digits)
  index = 3
  preceding_f_numbers = [1, 1]  #[0] index-2, [1] index -1
  current_f_number = 2

  while current_f_number.to_s.length < target_digits
    preceding_f_numbers.push current_f_number
    preceding_f_numbers.shift
    current_f_number = preceding_f_numbers.sum
    index += 1
  end
  index
end  

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847