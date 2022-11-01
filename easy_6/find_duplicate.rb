=begin
PROBLEM
Given an unordered array and the information that 
exactly one value in the array occurs twice 
(every other value occurs exactly once), 

how would you determine which value occurs twice? 
Write a method that will find and return the duplicate value that is known to be in the array.

input
  array (of numbers)

output
  number (that is duplicated)

rules - explicit
  array is unordered
  one (and only one) value occurrs twice 
  other values occur only once

rules - implicit
  array holds integers
  elements are of same type can be sorted

rules - questions

restate the problem
Find and return the element that is duplicated




EXAMPLES / TEST CASES
find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


DATA STRUCTURES


ALGORITHM
* pseudo code *

Given and Array: Array

sort the Array
iterate through elements until two consecutive elements are equal
return one of those elements

--
Given and Array: Array

create a working array


iterate through each element working array 
  pop an element
  if element is found in array, return the element



* formal pseudo code * 

Given: Array name Array

SET: working_array

WHILE working_array.length > 0
    current_element = working_array.pop
    if array.include? current_element
        return current_element

=end

# My solution
# def find_dup(array)
#   working_array = array.dup
#   while working_array.length > 0
#     element = working_array.pop
#     return element if working_array.include? element
#   end
# end

# givein solution. much better
def find_dup(array)
  array.find { |x| array.count(x) == 2 }
end


p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73